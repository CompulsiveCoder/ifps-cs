cp /ipfs-cs /ipfs-cs-staging -r
cd /ipfs-cs-staging
rm bin/* -r
sh build.sh $1
cd bin/$1
mono LaunchIntegrationTest.exe /assembly:"$2" /type:"$3"
#ipfs daemon & sleep 10 && mono LaunchIntegrationTest.exe /assembly:"$2" /type:"$3"
