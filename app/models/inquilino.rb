class Inquilino < ApplicationRecord
  after_commit :check_telefone, :check_email, :check_complemento, only: [ :create, :update ]

  validates :name, :sobrenome, :numero, :andar, presence: true
  validates :telefone, :email, uniqueness: true

  has_many :encomendas

  private

  def check_telefone
    return if telefone != ""
    
    update_column(:telefone, nil)
  end

  def check_email
    return if email != ""
    
    update_column(:email, nil)
  end

  def check_complemento
    return if complemento != ""
    
    update_column(:complemento, nil)
  end
end
