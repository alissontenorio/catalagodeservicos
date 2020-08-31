class ServicosController < ApplicationController
    before_action :set_servicos, only: [:index]
    before_action :set_servico, only: [:descricao_servico, :solicitar_servico]

    def index
    end

    def descricao_servico
    end

    def solicitar_servico
    end

    private
        def set_servicos
            @categoria = Categoria.find(params[:categoria_id])
            @servicos = Servico.where(categoria_id: params[:categoria_id])
        end

        def set_servico
            @servico = Servico.find(params[:servico_id])
            @categoria = Categoria.find(@servico.categoria_id)
        end
end