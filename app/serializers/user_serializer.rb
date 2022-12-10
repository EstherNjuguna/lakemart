class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :picture, :type
end
