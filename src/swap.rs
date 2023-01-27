#![no_std]

elrond_wasm::imports!();

const TOKEN_SWAPPED_DECIMALS_LACK: u64 = 10000000000000000;

#[elrond_wasm::contract]
pub trait SwapContract {
    #[init]
    fn init(&self, token_for_swap: EgldOrEsdtTokenIdentifier, token_swapped: EgldOrEsdtTokenIdentifier) {

        require!(token_for_swap != token_swapped, "Tokens must be different.");

        self.paused().set_if_empty(true);
        self.token_for_swap().set(token_for_swap);
        self.token_swapped().set(token_swapped);
        self.supply().set_if_empty(BigUint::zero());
    }

    #[only_owner]
    #[payable("*")]
    #[endpoint(FundContract)]
    fn fund(&self, #[payment_token] token_identifier: EgldOrEsdtTokenIdentifier, #[payment] _payment: BigUint) {
        require!(token_identifier == self.token_swapped().get(), "Invalid token.");
        require!(_payment > 0, "Number of tokens must be greater than 0.");

        self.supply().update(|supply| *supply += &_payment);
    }

    #[only_owner]
    #[endpoint(ReFundContract)]
    fn refund(&self) {
        let caller = self.blockchain().get_caller();
        let amount_token1 = self.blockchain().get_sc_balance(&self.token_swapped().get(), 0);
        
        if amount_token1 > BigUint::zero() {
            self.send().direct(&caller, &self.token_swapped().get(), 0, &amount_token1);
        }
        self.supply().set(BigUint::zero());
    }

    #[only_owner]
    #[endpoint(getOldTokens)]
    fn olg_tokens(&self) {
        let caller = self.blockchain().get_caller();
        let amount_token2 = self.blockchain().get_sc_balance(&self.token_for_swap().get(), 0);
        
        if amount_token2 > BigUint::zero() {
            self.send().direct(&caller, &self.token_for_swap().get(), 0, &amount_token2);
        }
    }

    #[only_owner]
    #[endpoint(burnOldTokens)]
    fn burn(&self, token: &TokenIdentifier) {
        let amount_token2 = self.blockchain().get_sc_balance(&self.token_for_swap().get(), 0);

        require!(amount_token2 > BigUint::zero(), "Number of tokens must be greater than 0.");
        self.send().esdt_local_burn(&token, 0, &amount_token2);
    }

    #[only_owner]
    #[endpoint(pause)]
    fn pause(&self) {
        self.paused().set(!self.paused().get());
    }

    #[payable("*")]
    #[endpoint(swapToken)]
    fn swap(&self, #[payment_token] token_identifier: EgldOrEsdtTokenIdentifier, #[payment] _payment: BigUint) {
        require!(!self.paused().get(), "Swap is already paused.");

        require!(token_identifier == self.token_for_swap().get(), "Invalid token.");
        require!(_payment > 0, "Number of tokens must be greater than 0.");
        require!(self.supply().get() >= _payment, "Not enough tokens available for swap.");

        let caller = self.blockchain().get_caller();
        let amount_to_send = &_payment * &BigUint::from(TOKEN_SWAPPED_DECIMALS_LACK);
        self.send().direct(&caller, &self.token_swapped().get(), 0, &amount_to_send);
        self.supply().update(|supply| *supply -= &_payment * &BigUint::from(TOKEN_SWAPPED_DECIMALS_LACK));
    }

    #[view(getIsPaused)]
    #[storage_mapper("paused")]
    fn paused(&self) -> SingleValueMapper<bool>;

    #[view(getSupply)]
    #[storage_mapper("supply")]
    fn supply(&self) -> SingleValueMapper<BigUint>;

    #[view(tokenForSwap)]
    #[storage_mapper("token_for_swap")]
    fn token_for_swap(&self) -> SingleValueMapper<EgldOrEsdtTokenIdentifier>;

    #[view(tokenSwapped)]
    #[storage_mapper("token_swapped")]
    fn token_swapped(&self) -> SingleValueMapper<EgldOrEsdtTokenIdentifier>;
}
