require 'pi_piper'

puts "Initializing lights"
red = PiPiper::Pin.new(:pin => 17, :direction => :out)
yellow = PiPiper::Pin.new(:pin => 27, :direction => :out)
green = PiPiper::Pin.new(:pin => 22, :direction => :out)

puts "Lights on"
red.on
yellow.on
green.on

sleep 5

puts "lights off"
red.off
yellow.off
green.off
