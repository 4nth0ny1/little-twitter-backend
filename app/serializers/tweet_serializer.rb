class TweetSerializer < ActiveModel::Serializer
  has_many :comments
  attributes :id, :content
end
