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

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
