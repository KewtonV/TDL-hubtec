namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando BD...") { %x(rails db:drop) }
      show_spinner("Criando BD...") { %x(rails db:create) }
      show_spinner("Migrando BD...") { %x(rails db:migrate) }
      show_spinner("Populando com seed.rb...") { %x(rails db:seed) }
      show_spinner("Cadastrando o ADM Padrão...") { %x(rails dev:add_default_usuario) }

    else
      puts "Você não está em ambiente de desenvolvimento!"
    end
  end

  desc "Adicionando o administrador padrão!"
  task add_default_usuario: :environment do
    Usuario.create!(
      email: 'hubtec@admin.com',
      password: 123456,
      password_confirmation: 123456
    )
  end

  private

  def show_spinner(msg_start, msg_end = "Concluído!")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")    
  end
end