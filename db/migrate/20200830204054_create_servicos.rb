class CreateServicos < ActiveRecord::Migration[6.0]
  def change
    create_table :servicos do |t|
      t.belongs_to :categoria

      t.string :titulo, null: false
      t.string :descricao, null: false
      t.string :funcao, null: false     
      t.integer :tempo_de_espera_em_segundos, null: false
      t.integer :prazo_para_cumprimento_em_segundos, null: false
      t.string :atendimento_prioritario
      t.string :documentos_necessarios
      t.string :legislacao
      t.string :quem_pode_utilizar, null: false      
      
      t.timestamps
    end
  end
end
