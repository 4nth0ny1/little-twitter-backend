class CommentSerializer < ActiveModel::Serializer
  belongs_to :tweet
  attributes :id, :reply, :tweet_id
end
