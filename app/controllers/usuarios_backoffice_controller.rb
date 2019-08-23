class UsuariosBackofficeController < ApplicationController
    #criei uma UsuariosBackofficeController para servir 
    #de herança para que no futuro possa existir duas
    #telas de login, usuarios e admins e não precisar
    #colocar o código do layout em cada novo controller
    #que vinher a existir.

    #Layout específico da página BackOffice
    layout 'usuarios_backoffice'

    #Protegendo o backoffice  com authenticate do devise.
    before_action :authenticate_usuario!
end
