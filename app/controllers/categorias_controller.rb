class CategoriasController < ApplicationController
    def index
        @categorias = Categoria.all
        #Servico.find_or_create_by(titulo: 'Desenvolvimento de portais institucionais', 
        #    descricao: 'Identificar necessidades relacionadas a divulgação de informação da comunidade acadêmica', 
        #    funcao: 'Faz a análise do conteúdo e em qual local do site deve ser publicado adequadamente', 
        #    tempo_de_espera_em_segundos: 86400,
        #    prazo_para_cumprimento_em_segundos: 172800, 
        #    atendimento_prioritario: 'Não', 
        #    documentos_necessarios: 'Documentos', 
        #    legislacao: 'Legislacao', 
        #    quem_pode_utilizar: 'Servidor')
        #c = Categoria.find(2)
        #puts c.servicos
    end

    def logado
    end
end