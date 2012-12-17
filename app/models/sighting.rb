class Sighting < ActiveRecord::Base
  attr_accessible :receiver_name, :transmitter_name, :rssi
end
