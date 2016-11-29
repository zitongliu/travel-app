# == Schema Information
#
# Table name: achievements
#
#  id          :integer          not null, primary key
#  date        :date
#  image       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  location_id :integer
#

class Achievement < ActiveRecord::Base
  belongs_to :user
  belongs_to :location
  has_many :comments
end
