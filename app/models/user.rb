# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string
#  name            :string
#  gender          :string
#  dob             :date
#  country         :string
#  email           :string
#  password_digest :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_secure_password
  has_many :achievements
  has_many :comments
  has_many :locations, :through => :achievements
end
