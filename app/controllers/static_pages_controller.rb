class StaticPagesController < ApplicationController
  def home
  end


  def results
  end



  def load
  	str = "Daily High-resolution Blended Analyses for sea surface temperature"
  	cmd = './scholar.py -p "#{str}" --list-citations'
  	data_hash = `#{cmd}`
  	if data_hash.nil? || data_hash.empty?
  		file = File.read(Rails.root.join("app/assets/quikscat.json"))
  		data_hash = JSON.parse(file) 		
  	else
  		data_hash = JSON.parse(data_hash)
  	end
  	render json:JSON.pretty_generate(data_hash)
  end

end
