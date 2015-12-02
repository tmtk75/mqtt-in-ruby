require 'rubygems'
require 'mqtt'
require 'yaml'

conf = YAML.load(File.read("mqtt.yml"))
topic = 'J5cumAeKuQdNA9RoqMRCsMd'

# Subscribe example
MQTT::Client.connect(conf) do |c|
  # If you pass a block to the get method, then it will loop
  c.get(topic) do |topic,message|
    puts "#{topic}: #{message}"
  end
end
