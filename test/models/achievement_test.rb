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

require 'test_helper'

class AchievementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
