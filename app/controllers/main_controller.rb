class MainController < ApplicationController
    def index
        @servicos = Servico.all
    end

    def logado
    end
end