
# echo '------> start watching'
cd `dirname $0`

./node_modules/jade/bin/jade -O . -P src/index.jade
./node_modules/stylus/bin/stylus -o page/ src/s.styl
./node_modules/coffee-script/bin/coffee -o page/ -bc src/h.coffee
# doodle page/ &

# read

# pkill -f 'jade -O page/ -w src/index.jade'
# pkill -f 'stylus -o page/ -w src/page.styl'
# pkill -f 'coffee -o page/ -wb src/handle.coffee'
# pkill -f 'doodle page/'

# echo '------> stop watching'