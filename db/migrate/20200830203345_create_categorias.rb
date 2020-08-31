class CreateCategorias < ActiveRecord::Migration[6.0]
  def change
    create_table :categorias do |t|
      t.string :titulo, null: false
      t.string :sub_titulo, null: false
      t.string :descricao, null: false
      #t.string :publico_alvo, null: false
      
      t.timestamps
    end
  end
end
