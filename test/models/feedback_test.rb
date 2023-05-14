require "test_helper"

class FeedbackTest < ActiveSupport::TestCase
  test "validates presence of content" do
    feedback = feedbacks(:hr)
    assert feedback.valid?
    feedback.content = ""
    assert_not feedback.valid?
  end
end
