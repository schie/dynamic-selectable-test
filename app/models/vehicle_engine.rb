# == Schema Information
#
# Table name: engines
#
#  id         :integer          not null, primary key
#  name       :string
#  model_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class VehicleEngine < ActiveRecord::Base
  belongs_to :model
end
