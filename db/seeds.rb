# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Friendship.create(:from_user_id => 1, :to_user_id => 2)
Friendship.create(:from_user_id => 1, :to_user_id => 3)
Friendship.create(:from_user_id => 1, :to_user_id => 4)
Friendship.create(:from_user_id => 5, :to_user_id => 1)
Friendship.create(:from_user_id => 6, :to_user_id => 1)
Friendship.create(:from_user_id => 3, :to_user_id => 2)