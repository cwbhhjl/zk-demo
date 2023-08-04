
docker-compose up -d zkevm-state-db
docker-compose up -d zkevm-pool-db
docker-compose up -d zkevm-event-db
docker-compose up -d zkevm-bridge-db

sleep 3

docker-compose up -d zkevm-mock-l1-network
sleep 3
docker-compose up -d zkevm-prover

# error, ignore
# docker-compose up -d zkevm-approve 
sleep 3
docker-compose up -d zkevm-sync

sleep 3
docker-compose up -d zkevm-eth-tx-manager
docker-compose up -d zkevm-sequencer
docker-compose up -d zkevm-sequence-sender
docker-compose up -d zkevm-l2gaspricer
docker-compose up -d zkevm-aggregator
docker-compose up -d zkevm-json-rpc

sleep 3
docker-compose up -d zkevm-bridge-ui
docker-compose up -d zkevm-explorer-json-rpc
docker-compose up -d zkevm-explorer-l1
docker-compose up -d zkevm-explorer-l2
sleep 5
docker-compose up -d zkevm-bridge-service