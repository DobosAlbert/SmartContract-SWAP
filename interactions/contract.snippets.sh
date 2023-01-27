PROJECT="${PWD}"

TOKEN_ID="ESTAR-ba1a38"
TOKEN_ID_HEX=$(echo -n ${TOKEN_ID} | xxd -p)
APR="17"
MIN_AMOUNT="10"
MINIM_LOCK_TIME="60" # seconds
TOTAL_SUPPLY_OPT="1000000"

# 1.4mil

PEM_FILE="/home/edi/Desktop/wallet-estar/wallet-owner.pem"
PROXY=https://gateway.elrond.com
CHAINID=1
ADDRESS=erd1qqqqqqqqqqqqqpgqrrccfuyx3hmdpyg330cnf8r93qc8g67zwmfs7l8qsq


deploy() {
  erdpy --verbose contract deploy --project=${PROJECT} --recall-nonce --pem=${PEM_FILE} \
    --gas-limit=30000000 --send --outfile="${PROJECT}/interactions/logs/deploy.json" \
    --proxy=${PROXY} --chain=${CHAINID} \
    --arguments "0x${TOKEN_ID_HEX}" ${APR} ${MIN_AMOUNT} ${MINIM_LOCK_TIME} || return
}

updateContract() {
  erdpy --verbose contract upgrade ${ADDRESS} --project=${PROJECT} --recall-nonce --pem=${PEM_FILE} \
    --gas-limit=30000000 --send --outfile="${PROJECT}/interactions/logs/deploy.json" \
    --proxy=${PROXY} --chain=${CHAINID} \
    --arguments "0x${TOKEN_ID_HEX}" ${APR} ${MIN_AMOUNT} ${MINIM_LOCK_TIME} ${TOTAL_SUPPLY_OPT}
}

getOldTokens() {
  erdpy --verbose contract call ${ADDRESS} --recall-nonce \
    --pem=${PEM_FILE} \
    --gas-limit=30000000 \
    --proxy=${PROXY} --chain=${CHAINID} \
    --function="GetOldTokens" \
    --send \
    --outfile="${PROJECT}/interactions/logs/fund.json"
}