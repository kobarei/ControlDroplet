ControlDroplet
===============

ruby script control your DigitalOcean Droplets

## Basic Usage

Modify config.yml with your Client Key and API Key.

    client_id: 'YourClientKey'
    api_key: 'YourAPIKey'


###Examples

Power On:

    ./droplet.rb droplet_id power_on

Power Off:

    ./droplet.rb droplet_id power_off

Check Status: Only droplet_id is required.

    ./droplet.rb droplet_id
