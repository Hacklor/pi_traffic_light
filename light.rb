require 'pi_piper'

class TrafficLight

  def initialize
    @red = PiPiper::Pin.new(:pin => 17, :direction => :out)
    @yellow = PiPiper::Pin.new(:pin => 27, :direction => :out)
    @green = PiPiper::Pin.new(:pin => 22, :direction => :out)
  end

  def green
    @red.off
    @yellow.off
    @green.on
  end

  def yellow
    @red.off
    @yellow.on
    @green.off
  end

  def red
    @red.on
    @yellow.off
    @green.off
  end

  def off
    @red.off
    @yellow.off
    @green.off
  end
end


begin
  puts "Initializing traffic light"
  traffic_light = TrafficLight.new

  while true do
    traffic_light.red
    sleep 3
    traffic_light.green
    sleep 3
    traffic_light.yellow
    sleep 3
  end
rescue
  puts "Rescued!"
ensure
  traffic_light.off
end
