# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  title      :string(255)
#  body       :text
#  image      :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#  tumblr_id  :string(255)
#

class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments
end
