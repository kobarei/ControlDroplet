#! /usr/bin/ruby
require './controle_droplet.rb'

droplet = ControleDroplet.new(ARGV[0])
puts "Droplet: #{droplet.status}"
unless ARGV[1] == 'status'
  droplet.action(ARGV[1])
end
