require 'optparse'

p = ARGV.getopts('','abc')
p p['a']
p ARGV
