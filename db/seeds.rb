# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Graduate.destroy_all

graduates = []

25.times do |i|
  new_graduate = {

    id: i,
    cedula: Faker::Number.number(8),
    nombre: Faker::Name.first_name,
    apellido: Faker::Name.last_name,
    carrera: Faker::Educator.course,
    sexo: Faker::Boolean.boolean,
    fecha_egreso: Faker::Date.backward(14),
    telefono: Faker::PhoneNumber.cell_phone,
    direccion: Faker::Address.street_address,
    fecha_nacimiento: Faker::Date.backward(5475)

  }
  graduates.push(new_graduate)
end

Graduate.create(graduates)
