
{print} = require "util"
{spawn} = require "child_process"

echo = (child, callback) ->
  child.stderr.on "data", (data) -> process.stderr.write data.toString()
  child.stdout.on "data", (data) -> print data.toString()
  child.on "exit", (code) -> callback?() if code is 0

make = (str) -> str.split " "

queue = [
  "jade -O #{__dirname}/ -wP src/index.jade"
  "stylus -o #{__dirname}/page/ -w #{__dirname}/src/s.styl"
  "coffee -o #{__dirname}/page/ -wbc #{__dirname}/src/h.coffee"
  "doodle #{__dirname}/page/ #{__dirname}/index.html"
]

split = (str) -> str.split " "

task "dev", "watch and convert files", (callback) ->
  queue.map(split).forEach (array) ->
    echo (spawn array[0], array[1..]), callback