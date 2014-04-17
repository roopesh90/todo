class List
	include Mongoid::Document
	field :priority, type: Integer
	field :content, type: String
	
	validates :content, presence: true
	validates :priority, presence: true

end
