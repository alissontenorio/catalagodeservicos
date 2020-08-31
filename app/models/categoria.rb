class Categoria < ApplicationRecord
    validates_presence_of :titulo, length: { maximum: 30 }
    validates_presence_of :sub_titulo, length: { maximum: 30 }
    validates :descricao, length: { maximum: 200, too_long: "%{count} characters is the maximum allowed" }
    #validates_presence_of :publico_alvo

    has_many :servicos
      
    # titulo
    # sub_titulo
    # descricao
    # publico_alvo
    # documentos
  end
  