class StatusController < ApplicationController
  def billboard_1
    sighting = Sighting.where(:transmitter_name => 'transmitter_1').order("created_at DESC").first
    if sighting && (Time.now - sighting.created_at < 10)
      if sighting.receiver_name == 'receiver_1'
        payload = {:image => "rx_1_tx_1_ipad.png"}
      elsif sighting.receiver_name == 'receiver_2'
        payload = {:image => "rx_2_tx_1_ipad.png"}
      end
    else
      payload = {}
    end

    return render json: payload.to_json, status: :ok
  end

  def billboard_2
    sighting = Sighting.where(:transmitter_name => 'transmitter_2').order("created_at DESC").first
    if sighting && (Time.now - sighting.created_at < 10)
      if sighting.receiver_name == 'receiver_1'
        payload = {:image => "rx_1_tx_2_ipad.png"}
      elsif sighting.receiver_name == 'receiver_2'
        payload = {:image => "rx_2_tx_2_ipad.png"}
      end
    else
      payload = {}
    end

    return render json: payload.to_json, status: :ok
  end

end