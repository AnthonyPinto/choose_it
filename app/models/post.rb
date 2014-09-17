# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  parent_id  :integer          not null
#  title      :string(255)      not null
#  body       :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#

class Post < ActiveRecord::Base
  validates 
end
