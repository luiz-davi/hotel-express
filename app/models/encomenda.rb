class Encomenda < ApplicationRecord
  belongs_to :user
  belongs_to :inquilino
end
