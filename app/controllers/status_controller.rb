class StatusController < ApplicationController
  def billboard_1
    sighting = Sighting.where(:transmitter_name => 'transmitter_1').order("created_at DESC").first
    if sighting && (Time.now - sighting.created_at < 10)
      if sighting.receiver_name == 'receiver_1'
        payload = {:image => "rx1_tx1_A_1920x1080.png"}
      elsif sighting.receiver_name == 'receiver_2'
        payload = {:image => "rx2_tx1_A_1920x1080.png"}
      elsif sighting.receiver_name == 'receiver_3'
        payload = {:image => "rx3_tx1_A_1920x1080.png"}
      elsif sighting.receiver_name == 'receiver_4'
        payload = {:image => "rx4_tx1_A_1920x1080.png"}
      elsif sighting.receiver_name == 'receiver_5'
        payload = {:image => "rx5_tx1_A_1920x1080.png"}
      elsif sighting.receiver_name == 'receiver_6'
        payload = {:image => "rx6_tx1_A_1920x1080.png"}
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
        payload = {:image => "rx1_tx2_A_1920x1080.png"}
      elsif sighting.receiver_name == 'receiver_2'
        payload = {:image => "rx2_tx2_A_1920x1080.png"}
      elsif sighting.receiver_name == 'receiver_3'
        payload = {:image => "rx3_tx2_A_1920x1080.png"}
      elsif sighting.receiver_name == 'receiver_4'
        payload = {:image => "rx4_tx2_A_1920x1080.png"}
      elsif sighting.receiver_name == 'receiver_5'
        payload = {:image => "rx5_tx2_A_1920x1080.png"}
      elsif sighting.receiver_name == 'receiver_6'
        payload = {:image => "rx6_tx2_A_1920x1080.png"}
      end
    else
      payload = {}
    end

    return render json: payload.to_json, status: :ok
  end

end