# == Schema Information
#
# Table name: vehicles
#
#  id         :integer          not null, primary key
#  name       :string
#  year       :integer
#  model_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Vehicle < ActiveRecord::Base
  belongs_to :make
  belongs_to :model
end
