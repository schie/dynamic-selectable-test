# == Schema Information
#
# Table name: makes
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Make < ActiveRecord::Base
  has_many :models
end
