class Main < ActiveRecord::Base
	validates :firstname,presence:{message: "This field is required"}
	validates :lastname,presence:{message: "This field is required"}
	validates :designation,presence:{message: "This field is required"}
	validates :origin,presence:{message: "This field is required"}
end
