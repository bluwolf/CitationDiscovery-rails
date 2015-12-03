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
  	#puts "Shu", data_hash
  	#if data_hash == nil
  		#file = File.read(Rails.root.join("app/assets/ccmp.json"))
  		#data_hash = JSON.parse(file)
  	#else
  	data_hash = JSON.parse(data_hash)
  	#end
  	render json:JSON.pretty_generate(data_hash)
  end

end
