require 'test_helper'

class UsuariosBackoffice::WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get usuarios_backoffice_welcome_index_url
    assert_response :success
  end

end
