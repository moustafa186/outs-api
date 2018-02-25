class PlaceSerializer < ActiveModel::Serializer 
  attributes :id, :name, :category, :budget, :rating, :created_at, :updated_at
end