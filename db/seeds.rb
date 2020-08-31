# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Categoria.find_or_create_by(titulo: 'Educação a distância', sub_titulo: 'Solicitação de turma virtual', descricao: 'Educação a distância é a modalidade educacional na qual alunos e professores estão separados, física ou temporalmente.')
Categoria.find_or_create_by(titulo: 'Portais Institucionais', sub_titulo: 'Soluções de divulgação da informação', descricao: 'Identificar necessidades relacionadas a divulgação de informação da comunidade acadêmica.')
Categoria.find_or_create_by(titulo: 'Telefonia', sub_titulo: 'Voz sobre banda larga (VoIP)', descricao: 'Serviço de telefonia oferecido por esta Instituição.')
Categoria.find_or_create_by(titulo: 'Telefonia3', sub_titulo: 'Voz sobre banda larga (VoIP)', descricao: 'Serviço de telefonia oferecido por esta Instituição.')
Categoria.find_or_create_by(titulo: 'Telefonia4', sub_titulo: 'Voz sobre banda larga (VoIP)', descricao: 'Serviço de telefonia oferecido por esta Instituição.')
Categoria.find_or_create_by(titulo: 'Telefonia5', sub_titulo: 'Voz sobre banda larga (VoIP)', descricao: 'Serviço de telefonia oferecido por esta Instituição.')
Categoria.find_or_create_by(titulo: 'Telefonia6', sub_titulo: 'Voz sobre banda larga (VoIP)', descricao: 'Serviço de telefonia oferecido por esta Instituição.')
#Categoria.find_or_create_by(titulo: 'Telefonia7', sub_titulo: 'Voz sobre banda larga (VoIP)', descricao: 'Serviço de telefonia oferecido por esta Instituição.')

Servico.find_or_create_by(titulo:'Solicitar novo ramal', descricao: 'Disponibilização de novo ramal de telefonia com aparelho VOIP', funcao: 'Novos ramais voip', tempo_de_espera_em_segundos: 0, prazo_para_cumprimento_em_segundos: 172800, atendimento_prioritario: 'Não', documentos_necessarios: 'Documentos', legislacao: 'Legislacao', quem_pode_utilizar: 'Servidor', categoria_id: Categoria.find_by(titulo: 'Telefonia').id)
Servico.find_or_create_by(titulo:'Desenvolvimento de portais institucionais', descricao: 'Identificar necessidades relacionadas a divulgação de informação da comunidade acadêmica', funcao: 'Faz a análise do conteúdo e em qual local do site deve ser publicado adequadamente', tempo_de_espera_em_segundos: 86400,prazo_para_cumprimento_em_segundos: 172800, atendimento_prioritario: 'Não', documentos_necessarios: 'Documentos', legislacao: 'Legislacao', quem_pode_utilizar: 'Servidor', categoria_id: Categoria.find_by(titulo: 'Portais Institucionais').id)
Servico.find_or_create_by(titulo:'Desenvolvimento de portais institucionais', descricao: 'Desenvolver soluções tecnológicas para atender as demandas de divulgação da informação', funcao: 'Publicar notícias, informes, banners', tempo_de_espera_em_segundos: 172800,prazo_para_cumprimento_em_segundos: 86400, atendimento_prioritario: 'Em casos extremos', documentos_necessarios: 'Documentos', legislacao: 'Legislacao', quem_pode_utilizar: 'Servidor', categoria_id: Categoria.find_by(titulo: 'Portais Institucionais').id)

#Servico.find_or_create_by(titulo:'Desenvolvimento de portais institucionais', descricao:,funcao:,tempo_de_espera_em_segundos:,prazo_para_cumprimento_em_segundos:,atendimento_prioritario:,documentos_necessarios:,legislacao:,quem_pode_utilizar:)
#Servico.find_or_create_by(titulo:'Desenvolvimento de portais institucionais', descricao:,funcao:,tempo_de_espera_em_segundos:,prazo_para_cumprimento_em_segundos:,atendimento_prioritario:,documentos_necessarios:,legislacao:,quem_pode_utilizar:)