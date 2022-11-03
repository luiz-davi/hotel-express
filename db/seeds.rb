# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Inquilino.find_or_create_by(
  name: "Davi",
  sobrenome: "Mendes",
  telefone: "87991432198",
  email: "luizd4398@gmail.com",
  numero: "45",
  andar: "3",
  complemento: "A"
)

Inquilino.find_or_create_by(
  name: "Victor",
  sobrenome: "Mendes",
  telefone: "8799525919",
  email: "luizd4398@gmail.com",
  numero: "2",
  andar: "1",
  complemento: "B"
)

Inquilino.find_or_create_by(
  name: "Marcos",
  sobrenome: "Cavalcanti",
  telefone: "87991458963",
  email: "marcos@gmail.com",
  numero: "6",
  andar: "2",
  complemento: "C"
)

Inquilino.find_or_create_by(
  name: "Julio",
  sobrenome: "Cesar",
  telefone: "87981780822",
  numero: "6",
  andar: "3",
  complemento: "A"
)
