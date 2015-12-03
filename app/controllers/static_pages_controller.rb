class StaticPagesController < ApplicationController
  def home
  end

<<<<<<< HEAD
  def results
  end

  def load
=======
  def load
  	#file = File.read(Rails.root.join("app/assets/ccmp.json"))
  	#data_hash = JSON.parse(file)
  	str = "Daily High-resolution Blended Analyses for sea surface temperature"
  	cmd = './scholar.py -p #{str} --list-citations'
  	data_hash = `#{cmd}`
  	puts "Shu", data_hash
  	if data_hash != nil
  		file = File.read(Rails.root.join("app/assets/ccmp.json"))
  		data_hash = JSON.parse(file)
  	else
  		data_hash = JSON.parse(data_hash)
  	end
  	render json:JSON.pretty_generate(data_hash)
>>>>>>> 63e360cd98f311660d92ca8789e629331c075cb1
  end
end
