class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    protected
  
    def set_usuario_logado(usuario)
      session[:usuario_logado] = usuario
    end
  
    def usuario_logado
      return session[:usuario_logado].with_indifferent_access if session[:usuario_logado]
    end
end
