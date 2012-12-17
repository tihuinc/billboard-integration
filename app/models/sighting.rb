class Sighting < ActiveRecord::Base
  attr_accessible :receiver_uuid, :transmitter_id, :rssi
end
