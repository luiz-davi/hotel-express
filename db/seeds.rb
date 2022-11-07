# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.find_or_initialize_by(email: "luiz@gmail.com")
user2 = User.find_or_initialize_by(email: "victor@gmail.com")
user3 = User.find_or_initialize_by(email: "mario@gmail.com")


user1.inquilinos.find_or_create_by(
  name: "Davi",
  sobrenome: "Mendes",
  telefone: "87991432198",
  email: "luizd4398@gmail.com",
  numero: "45",
  andar: "3",
  complemento: "A"
)

user1.inquilinos.find_or_create_by(
  name: "Victor",
  sobrenome: "Mendes",
  telefone: "8799525919",
  email: "luizd4398@gmail.com",
  numero: "2",
  andar: "1",
  complemento: "B"
)

user1.inquilinos.find_or_create_by(
  name: "Marcos",
  sobrenome: "Cavalcanti",
  telefone: "87991458963",
  email: "marcos@gmail.com",
  numero: "6",
  andar: "2",
  complemento: "C"
)

user1.inquilinos.find_or_create_by(
  name: "Julio",
  sobrenome: "Cesar",
  telefone: "87981780822",
  numero: "6",
  andar: "3",
  complemento: "A"
)

user1.inquilinos.find_or_create_by(
  name: "Dwigth",
  sobrenome: "Schrut",
  email: "dwigth@gmail.com",
  telefone: "87981435963",
  numero: "9",
  andar: "4",
  complemento: "A"
)

user1.inquilinos.find_or_create_by(
  name: "Ezequias",
  sobrenome: "Martins",
  email: "ezequias@gmail.com",
  telefone: "87995563245",
  numero: "15",
  andar: "4",
  complemento: "C"
)
