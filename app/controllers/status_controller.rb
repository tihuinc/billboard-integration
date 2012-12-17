class StatusController < ApplicationController
  def billboard_1
    sighting = Sighting.where(:transmitter_name => 'transmitter_1').order("created_at DESC").first
    if (sighting)
      if (Time.now - sighting.created_at < 5)
        if sighting.receiver_name == 'receiver_1'
          payload = {:image => "tx_1_rx_1_ipad"}
        elsif sighting.receiver_name == 'receiver_2'
          payload = {:image => "tx_1_rx_2_ipad"}
        end
    else
      payload = {}
    end

    return render json: payload.to_json, status: :ok
  end

  def billboard_2
    sighting = Sighting.where(:transmitter_name => 'transmitter_2').order("created_at DESC").first
    if (sighting)
      if (Time.now - sighting.created_at < 5)
        if sighting.receiver_name == 'receiver_1'
          payload = {:image => "tx_2_rx_1_ipad"}
        elsif sighting.receiver_name == 'receiver_2'
          payload = {:image => "tx_2_rx_2_ipad"}
        end
    else
      payload = {}
    end

    return render json: payload.to_json, status: :ok
  end
end