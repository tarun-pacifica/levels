# == Schema Information
#
# Table name: users
#
#  id     :integer          not null, primary key
#  name   :string(255)
#  email  :string(255)
#  avatar :string(255)
#  body   :string(255)
#

class User < ActiveRecord::Base
	has_many :posts
	mount_uploader :avatar, AvatarUploader
end
