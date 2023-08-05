docker-compose up -d zkevm-state-db
sleep 3

docker-compose up -d zkevm-pool-db
sleep 3

docker-compose up -d zkevm-event-db
sleep 3

docker-compose up -d zkevm-bridge-db
sleep 3

#docker-compose up -d zkevm-mock-l1-network
#sleep 3

docker-compose up -d zkevm-prover
sleep 3

# error, ignore
docker-compose up -d zkevm-approve 
sleep 3

docker-compose up -d zkevm-sync
sleep 3

docker-compose up -d zkevm-eth-tx-manager
sleep 3

docker-compose up -d zkevm-sequencer
sleep 3
docker-compose up -d zkevm-sequence-sender
sleep 3
docker-compose up -d zkevm-l2gaspricer
sleep 3
docker-compose up -d zkevm-aggregator
sleep 3
docker-compose up -d zkevm-json-rpc
sleep 3

#docker-compose up -d zkevm-explorer-json-rpc
#docker-compose up -d zkevm-explorer-l1
#docker-compose up -d zkevm-explorer-l2
sleep 10
docker-compose up -d zkevm-bridge-service


sleep 5
docker-compose up -d zkevm-bridge-ui

docker ps -a
