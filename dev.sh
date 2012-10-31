
echo '------> start watching'
cd `dirname $0`

./node_modules/jade/bin/jade -O ./ -wP src/index.jade &
./node_modules/stylus/bin/stylus -o page/ -w src/s.styl &
./node_modules/coffee-script/bin/coffee -o page/ -wbc src/h.coffee &
./node_modules/doodle/bin/doodle page/ index.html &

read

pkill -f jade
pkill -f stylus
pkill -f coffee
pkill -f doodle

echo '------> stop watching'