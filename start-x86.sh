export LD_LIBRARY_PATH=$1/lib:$1/linux32
export LD_PRELOAD=$1/resolvconf-override.so
LD_LINUX=$1/linux32/ld-linux.so.2
export NAMESERVER1=8.8.8.8
export HOME=$1
cd $1
shift 1
chmod 777 $LD_LINUX
chmod 777 $1
$LD_LINUX $*