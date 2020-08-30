class CreateServicos < ActiveRecord::Migration[6.0]
  def change
    create_table :servicos do |t|
      t.string :titulo, null: false
      t.string :sub_titulo, null: false
      t.string :descricao, null: false
      t.string :publico_alvo, null: false
      t.string :documentos
      
      t.timestamps
    end
  end
end
