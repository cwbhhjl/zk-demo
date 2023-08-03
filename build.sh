cd ../
git clone -b release/v0.2.1 https://github.com/0xPolygonHermez/zkevm-node.git
git clone -b release/v0.2.0 https://github.com/0xPolygonHermez/zkevm-bridge-service.git
git clone -b develop https://github.com/0xPolygonHermez/zkevm-bridge-ui.git

cd ./zkevm-node
make build-docker
cd -

cd ./zkevm-bridge-service
make build-docker
cd -

cd ./zkevm-bridge-ui
docker build . -t zkevm-bridge-ui:local
cd -
cd zk-demo
