Rails.application.routes.draw do
  scope(path: '/catalogo') do
    root 'main#index', as: 'main'

    put '/autenticar', to: 'login#autenticar', as: 'auth'
    get  '/sair', to: 'login#sair', as: 'logout'

    get 'logado', to: 'main#logado', as: 'logado'
  end
end
