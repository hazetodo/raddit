# == Schema Information
#
# Table name: links
#
#  id         :integer          not null, primary key
#  title      :string
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Link < ActiveRecord::Base
  belongs_to :user
  acts_as_votable
  has_many :comments
end
