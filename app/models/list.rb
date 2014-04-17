class List
	include Mongoid::Document
	field :priority, type: Integer
	field :content, type: String
	
	validates :content,
		presence: true
		
	validates :priority, 
		presence: true,
		numericality: {
			only_integer:true,
			greater_than_or_equal_to: 0,
			less_than_or_equal_to: 10
			}

end
