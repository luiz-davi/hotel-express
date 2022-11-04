class Inquilino < ApplicationRecord
  validates :name, :sobrenome, :numero, :andar, presence: true
  validates :telefone, :email, uniqueness: true
end
