#! /usr/bin/ruby
require './control_droplet.rb'

droplet = ControlDroplet.new(ARGV[0])
puts "Droplet: #{droplet.status}"
droplet.action(ARGV[1]) if ARGV[1]
