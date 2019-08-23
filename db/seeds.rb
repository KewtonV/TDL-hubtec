# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Criando alguns produtos de exemplo
    List.create description: "Acordar 05:00AM e fazer café e merendar.", completed: true
    List.create description: "Às 06:00AM correr 40 min.", completed: true
    List.create description: "Às 07:00AM ir trabalhar.", completed: true
    List.create description: "Às 08:00PM ir malhar.", completed: false
    List.create description: "ÀS 09:00PM jantar.", completed: false
    List.create description: "ÀS 10:00PM dormir.", completed: false