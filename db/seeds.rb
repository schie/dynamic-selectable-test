puts "Deleted #{Vehicle.delete_all} vehicles"

puts "Deleted #{Make.delete_all} makes"
puts "Creating makes"

nissan = Make.create!(name: 'Nissan')

puts "Deleted #{Model.delete_all} models"
puts "Creating models"

%w(Altima Maxima Sentra).each do |model_name|
  Model.create!(name: model_name, make: nissan)
end

puts "Deleted #{VehicleEngine.delete_all} engines"
puts "Creating engines"

Model.where(name: %w(Altima Sentra)).each do |model|
  model.vehicle_engines.create!(name: '4 Cylinder')
end

Model.where(name: %w(Altima Maxima)).each do |model|
  model.vehicle_engines.create!(name: '6 Cylinder')
end
