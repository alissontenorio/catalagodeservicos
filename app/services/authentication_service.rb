class AuthenticationService

    def self.authenticate(username, password)
      if username.include?('@')
        cpf_administrador, cpf_docente = username.split('@')
        administrador = Administrador.find_by!(cpf: cpf_administrador)
        docente = DocenteSie.find_by!(cpf_docente: cpf_docente)
  
        authenticate_cas(cpf_administrador, password)
  
        {
          cpf_administrador: cpf_administrador,
          nome_administrador: administrador.nome,
          cpf: cpf_docente,
          nome: docente.nome_docente,
          role: Role::ADMIN_DOCENTE
        }
      else
        #usuario = Administrador.find_by(cpf: username)
        #usuario ||= DocenteSie.find_by!(cpf_docente: username)
  
        authenticate_cas(username, password)
  
        {
          #cpf: usuario.cpf_usuario,
          #nome: usuario.nome_usuario,
          #role: usuario.is_a?(Administrador) ? Role::ADMIN : Role::DOCENTE
        }
      end
    end
  
    private
  
    def self.authenticate_cas(username, password)
      puts "1111"
      service = Rails.application.config.service_url
      puts "22222"
      tgt = create_tgt(username, password)
      puts "3333"
      st = create_st(tgt, service)

      puts "olhae"
      puts tgt
      puts st
      puts "olar"
      validate_st(st, service)
    end
  
    def self.create_tgt(username, password)
      tgt_creation_url = Rails.application.config.cas_base_url + '/v1/tickets'
      response = RestClient.post(tgt_creation_url, {username: username, password: password})
      response.headers[:location]
    end
  
    def self.create_st(tgt, service)
      response = RestClient.post(tgt, {service: service}) { |response, request, result|
        case response.code
        when 302
          response.follow_redirection
        else
          response.return!
        end
      }
      response.body
    end
  
    def self.validate_st(st, service)
      st_validation_url = Rails.application.config.cas_base_url + '/proxyValidate'
      response = RestClient.get(st_validation_url, { params: { ticket: st, service: service } })
      cpf = response.body.match('\d{11}')[0]

      puts "lmebrancas"
      puts response
      puts "mano"
  
      raise 'Não foi possível autenticar o usuário' unless cpf
    end
  end
  