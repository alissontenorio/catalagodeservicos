class LoginController < ApplicationController
    before_action :verificar_acesso, except: [:sair]
  
    def index
    end
  
    def autenticar
      redirect_to main_path if usuario_logado
  
      begin
        usuario = AuthenticationService.authenticate(params[:cpf], params[:senha])
        set_usuario_logado(usuario)
  
        #redirect_to usuario_logado[:role] == Role::ADMIN ? usuarios_path : ambientes_path
        redirect_to logado_path
      rescue Exception => ex
        Rails.logger.error ex.message
        flash[:alert] = 'Credenciais inválidas'
        redirect_to main_path
      end
    end
  
    def sair
      set_usuario_logado(nil)
      redirect_to main_path
    end
  
    private
  
    def verificar_acesso
      if usuario_logado
        #redirect_to usuarios_path and return if usuario_logado[:role] == Role::ADMIN
        #redirect_to ambientes_path
        redirect_to logado_path
      end
    end
  end