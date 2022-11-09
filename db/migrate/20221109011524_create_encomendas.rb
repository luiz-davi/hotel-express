class CreateEncomendas < ActiveRecord::Migration[7.0]
  def change
    create_table :encomendas do |t|
      t.references :user, null: false, foreign_key: true
      t.references :inquilino, null: false, foreign_key: true
      t.datetime :data_entregue
      t.text :observacao

      t.timestamps
    end
  end
end
