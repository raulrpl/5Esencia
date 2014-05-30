require 'test_helper'

class ServicioControllerTest < ActionController::TestCase
  test "should get servicio" do
    get :servicio
    assert_response :success
  end

end
