require File.dirname(__FILE__) + '/../test_helper'
require 'make_model_controller'

# Re-raise errors caught by the controller.
class MakeModelController; def rescue_action(e) raise e end; end

class MakeModelControllerTest < Test::Unit::TestCase
  def setup
    @controller = MakeModelController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
