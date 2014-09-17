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
  validates :title, :body, presence: true
  
  has_many(
    :children,
    class_name: 'Post',
    foreign_key: :parent_id,
    primary_key: :id
  )
  
  belongs_to(
    :parent,
    class_name: 'Post',
    foreign_key: :parent_id,
    primary_key: :id
  )
end
