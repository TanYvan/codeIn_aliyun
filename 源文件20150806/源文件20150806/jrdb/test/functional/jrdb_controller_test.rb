require File.dirname(__FILE__) + '/../test_helper'
require 'jrdb_controller'

# Re-raise errors caught by the controller.
class JrdbController; def rescue_action(e) raise e end; end

class JrdbControllerTest < Test::Unit::TestCase
  def setup
    @controller = JrdbController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
