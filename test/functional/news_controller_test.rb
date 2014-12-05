require 'test_helper'

class NewsControllerTest < ActionController::TestCase
  test "should get tampil" do
    get :tampil
    assert_response :success
  end

  test "should get tambah" do
    get :tambah
    assert_response :success
  end

  test "should get hapus" do
    get :hapus
    assert_response :success
  end

end
