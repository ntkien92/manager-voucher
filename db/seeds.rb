# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |n|
  department = Department.find_or_create_by(name: "Phong ban #{n + 1}")
end

10.times do |n|
  user = User.create(email: "test+#{n+1}@gmail.com", password: '12345678', department_id: "#{n+1}".to_i)
end

1000.times do |n|
  Document.create(title: "Title #{n+1}", content: "Content #{n+1}", department_id: rand(1..10))
end

10000.times do |n|
  DepartmentDocument.create(document_id: rand(1..1000), department_id: rand(1..10))
end
