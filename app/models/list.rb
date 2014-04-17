class List
  include Mongoid::Document
  field :priority, type: Integer
  field :content, type: String
end
