cd ../
git clone -b v0.1.2 https://github.com/0xPolygonHermez/zkevm-node.git
git clone -b v0.1.0 https://github.com/0xPolygonHermez/zkevm-bridge-service.git

cd ./zkevm-node
make build-docker
cd -

cd ./zkevm-bridge-service
make build-docker
cd -
cd zk-demo
