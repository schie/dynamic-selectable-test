puts "Deleted #{Vehicle.delete_all} vehicles"

puts "Deleted #{Make.delete_all} makes"
puts "Creating makes"

nissan = Make.create!(name: 'Nissan')

puts "Deleted #{Model.delete_all} models"
puts "Creating models"

%w(Altima Maxima Sentra).each do |model_name|
  Model.create!(name: model_name, make: nissan)
end
