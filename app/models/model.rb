# == Schema Information
#
# Table name: models
#
#  id         :integer          not null, primary key
#  name       :string
#  make_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Model < ActiveRecord::Base
  belongs_to :make
end
