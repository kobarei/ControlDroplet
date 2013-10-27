ControleDroplet
===============

ruby script controle your DigitalOcean Droplets

## Basic Usage

Modify config.yml with your Client Key and API Key.

    client_id: 'YourClientKey'
    api_key: 'YourAPIKey'

Power On:

    ./droplet.rb droplet_id power_on

Power Off:

    ./droplet.rb droplet_id power_off

Check Status:

    ./droplet.rb droplet_id status
