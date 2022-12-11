class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password,:picture, :type
end
