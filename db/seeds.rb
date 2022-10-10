# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
AppointmentStatus.create([{name: 'Agendado'}, {name: 'Confirmado'}, {name: 'En espera'}, {name: 'Atendido'}])
AppointmentType.create([{name: 'Normal'}, {name: 'Procedimientos'}])