class Place
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :category, type: String
  field :budget, type: BigDecimal
  field :rating, type: BigDecimal
end
