# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tweet_one = Tweet.create(content: 'tweet one')
tweet_two = Tweet.create(content: 'tweet two')
tweet_three = Tweet.create(content: 'tweet three')

comment_one = Comment.create(reply: 'reply one to tweet one', tweet_id: tweet_one.id)
comment_two = Comment.create(reply: 'reply two to tweet one', tweet_id: tweet_one.id)
comment_three = Comment.create(reply: 'reply one to tweet two', tweet_id: tweet_two.id)
comment_four = Comment.create(reply: 'reply two to tweet two', tweet_id: tweet_two.id)
comment_five = Comment.create(reply: 'reply one to tweet three', tweet_id: tweet_three.id)
comment_six = Comment.create(reply: 'reply two to tweet three', tweet_id: tweet_three.id)