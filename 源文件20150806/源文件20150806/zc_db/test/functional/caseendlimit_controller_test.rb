require File.dirname(__FILE__) + '/../test_helper'
require 'caseendlimit_controller'

# Re-raise errors caught by the controller.
class CaseendlimitController; def rescue_action(e) raise e end; end

class CaseendlimitControllerTest < Test::Unit::TestCase
  def setup
    @controller = CaseendlimitController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
