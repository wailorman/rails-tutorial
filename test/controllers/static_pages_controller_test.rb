require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test 'should get home' do
    get :home
    assert_response :success
  end

  test 'should get about' do
    get :about
    assert_response :success
    assert_select 'title', 'Rails Tutorial'
  end

  test 'should get contacts' do
    get :contacts
    assert_response :success
    assert_select 'title', 'Rails Tutorial | Contacts'
  end

end
