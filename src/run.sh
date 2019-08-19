SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

# 0
sqlite3 :memory: ".exit"
echo $?

# 255
sqlite3 :memory: ".exit 255"
echo $?

# 0
sqlite3 :memory: ".exit 256"
echo $?

# 255
sqlite3 :memory: ".exit -1"
echo $?

