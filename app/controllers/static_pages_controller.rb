class StaticPagesController < ApplicationController
  def home
  end


  def results
  end



  def load
  	#file = File.read(Rails.root.join("app/assets/ccmp.json"))
  	#data_hash = JSON.parse(file)
  	str = "Daily High-resolution Blended Analyses for sea surface temperature"
  	cmd = './scholar.py -p "Daily High-resolution Blended Analyses for sea surface temperature" --list-citations'
  	data_hash = `#{cmd}`
  	#puts "shu", data_hash
  	# if data_hash
    #   data_hash = JSON.parse(data_hash)
  	# else
      file = File.read(Rails.root.join("app/assets/ccmp.json"))
      data_hash = JSON.parse(file)
  	# end
  	render json:JSON.pretty_generate(data_hash)
  end

end
