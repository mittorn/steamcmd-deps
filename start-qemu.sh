export NAMESERVER1=`getprop net.dns1` 2>/dev/null
export NAMESERVER2=8.8.8.8
export LD_LIBRARY_PATH=$1/lib:$1/linux32
export LD_PRELOAD=$1/preload.so
QEMU=$2
LD_LINUX=$1/linux32/ld-linux.so.2
export HOME=$1
cd $1
shift 2
$QEMU $LD_LINUX $*
