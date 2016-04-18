class Player < ActiveRecord::Base
  has_many :player_histories, dependent: :destroy
	
	def self.import(file)
		CSV.foreach(file.path, headers:true) do |row|
			Player.create! row.to_hash
		end
	end

	def self.to_csv
		CSV.generate do |csv|
			csv << column_names
			all.each do |player|
				csv << player.attributes.values_at(*column_names)
			end
		end
	end
end
