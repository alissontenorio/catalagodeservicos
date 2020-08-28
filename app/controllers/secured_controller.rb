class SecuredController < ApplicationController
    before_action :validar_sessao
  
    protected
  
    def validar_sessao
      redirect_to login_path unless usuario_logado
    end
end