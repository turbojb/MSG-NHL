class Entry < ActiveRecord::Base
	attr_accessible :cable_provider, :email, :favorite_nhl, :first_name, :last_name, :zip_code, :newsletter, :official_rules
	validates :email, :confirmation => true, :format=>{ :with =>  /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :message=>"Email is not the correct format"}
	validates :first_name, :exclusion => { :in => 'First Name*', :message=>"Valid First Name is required" }, :length => { :minimum => 2, :message=>"First Name is required" }
	validates :last_name, :exclusion => { :in => 'Last Name*', :message=>"Valid Last Name is required" }, :length => { :minimum => 2, :message=>"Last Name is required"  }
	#validates :email_confirmation, :presence=>true
	validates_format_of :zip_code, :with => /^\d{5}(-\d{4})?$/, :message => "Should be in the form 12345 or 12345-1234"
	validates :official_rules, :acceptance => { :accept => 1 }
	validate :check_cable_dropdown
	validate :check_nhl_dropdown

	def check_cable_dropdown 
		if cable_provider == '0'
			errors.add(:cable_provider, "You must select a cable provider.")
			logger.info (cable_provider)
			return false
		end

	end

	def check_nhl_dropdown
		if favorite_nhl == '0'
			errors.add(:favorite_nhl, "You must select your favorite NHL team.")
			return false 
		end
	end

	def self.to_csv(options = {})
		CSV.generate do |csv| 
			csv << column_names
			all.each do |entry|
				csv << entry.attributes.values_at(*column_names)
			end
		end
	end
end
