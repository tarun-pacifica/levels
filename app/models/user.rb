# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  email           :string(255)
#  avatar          :string(255)
#  body            :string(255)
#  password_digest :string(255)
#  is_admin        :boolean          default(FALSE)
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base
	has_many :posts
	mount_uploader :avatar, AvatarUploader

	  has_secure_password
	  # validates :avatar, :presence => true
	  validates :username, :presence => true, :length => { :minimum => 2 }

end
