class Usuario < ApplicationRecord
  validates_presence_of :nome
  validates_uniqueness_of :cpf

  def cpf
    self.cpf
  end

  def nome
    self.nome
  end  
end
