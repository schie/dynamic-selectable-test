# == Schema Information
#
# Table name: vehicles
#
#  id         :integer          not null, primary key
#  name       :string
#  year       :integer
#  make_id    :integer
#  model_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Vehicle < ActiveRecord::Base
  belongs_to :make
  belongs_to :model
  belongs_to :vehicle_engine
end
