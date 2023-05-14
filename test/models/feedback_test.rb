require "test_helper"

class FeedbackTest < ActiveSupport::TestCase
  def setup
    @feedback = feedbacks(:hr)
  end

  def test_is_not_valid_without_content
    assert @feedback.valid?

    @feedback.content = ''
    assert_not @feedback.valid?
  end

  def test_default_status_is_open
    assert_equal 'open', @feedback.status
  end

  def test_is_invalid_without_status
    assert @feedback.valid?

    @feedback.status = ''
    assert_not @feedback.valid?
  end
end
