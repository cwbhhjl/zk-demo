cd ../zkevm-git/zkevm-node
make build-docker

cd -

cd ../zkevm-git/zkevm-bridge-service
make build-docker

cd -

cd ../zkevm-git/zkevm-bridge-ui
docker build . -t zkevm-bridge-ui:local

cd -
