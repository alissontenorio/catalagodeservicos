Rails.application.routes.draw do
  scope(path: '/catalogo') do
    root 'categorias#index', as: 'catalogo'

    put '/autenticar', to: 'login#autenticar', as: 'auth'
    get  '/sair', to: 'login#sair', as: 'logout'

    get 'logado', to: 'categorias#logado', as: 'logado'

    get '/:categoria_id', to: 'servicos#index', as: 'servicos'
    #get '/:categoria_id/solicitar', to: 'servicos#solicitar', as: 'solicitar'
    get '/:categoria_titulo/:servico_id/descricao', to: 'servicos#descricao_servico', as: 'descricao_servico' 
    get '/:categoria_titulo/:servico_id/solicitar', to: 'servicos#solicitar_servico', as: 'formulario_solicitar_servico'  
    put '/:categoria_titulo/:servico_id/solicitar', to: 'servicos#solicitar_servico', as: 'solicitar_servico'     
  end
end
