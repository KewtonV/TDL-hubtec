* Versão Ruby 2.6.3 e Rails 5.2.0

* Dependências do sistema
YARN INTALL
Estou usando as bibliotecas Jquery, Notify.js, Popper.js e 
Bootstrap através do YARN pois ele é o recomendado apartir 
da versão rails 5.1. E com os arquivos yarn.lock e 
package.json é possível rodar o yarn install para criar a 
pasta ‘node_modulos’ que irá vim com as bibliotecas.

* Criação, Inicialização do banco de dados
Foi criado uma TASK DEV:SETUP que verifica se o ambiente 
é de desenvolvimento e executa os rails DB:DROP DB:CREATE 
DB:MIGRATEQUE DB:SEED e cria um usuário padrão 
('hubtec@admin.com') através da TASK add_default_usuario.