# == Schema Information
#
# Table name: comments
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  post_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Comment < ActiveRecord::Base
	belongs_to :post
end
