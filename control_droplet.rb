class ControlDroplet
  require 'yaml'
  require 'json'
  require 'open-uri'

  def initialize(droplet_id)
    config      = YAML.load(File.read("config.yml"))
    @client_id  = config['client_id']
    @api_key    = config['api_key']
    @droplet_id = droplet_id
  end

  def action(operation)
    stat_start = status
    res = JSON.parse(open(
      "https://api.digitalocean.com/droplets/#{@droplet_id}/#{operation}/?client_id=#{@client_id}&api_key=#{@api_key}").read)
    puts "#{operation}: #{res['status']}"
  end

  def status
    res = JSON.parse(open(
      "https://api.digitalocean.com/droplets/#{@droplet_id}?client_id=#{@client_id}&api_key=#{@api_key}").read)
    return res['droplet']['status']
  end

end
