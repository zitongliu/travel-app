# == Schema Information
#
# Table name: comments
#
#  id             :integer          not null, primary key
#  date           :date
#  description    :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :integer
#  achievement_id :integer
#

class Comment < ActiveRecord::Base
  belongs_to :achievement
  belongs_to :user
end
