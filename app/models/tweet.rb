class Tweet < ApplicationRecord
    has_many :comments, dependent: :destroy
end
