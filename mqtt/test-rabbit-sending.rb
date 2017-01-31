require "bunny"

conn = Bunny.new  # For local testing
# conn = Bunny.new(:hostname => "172.17.112.100", :user => "sgleng\\z1335971", :pass => "Ruger222506555375")
conn.start
ch = conn.create_channel
q = ch.queue("hello")
ch.default_exchange.publish("Hello world from a ruby script using rabbitmq", :routing_key => q.name)
puts "[x] Message sent"
conn.close
