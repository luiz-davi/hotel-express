class CreateInquilinos < ActiveRecord::Migration[7.0]
  def change
    create_table :inquilinos do |t|
      t.string :name
      t.string :sobrenome
      t.string :telefone
      t.string :email
      t.string :numero
      t.string :andar
      t.string :complemento

      t.timestamps
    end
  end
end
