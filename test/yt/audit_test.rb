require 'test_helper'
require 'yt/audit'

class Yt::AuditTest < Minitest::Test
  def test_channel_audit
    audit = Yt::Audit.new(channel_id: 'UCKM-eG7PBcw3flaBvd0q2TQ')
    result = audit.run

    assert_equal 'Info Cards', result[0].title
    assert_equal 2, result[0].valid_count
    assert_equal 4, result[0].total_count

    assert_equal 'Brand Anchoring', result[1].title
    assert_equal 2, result[1].valid_count
    assert_equal 4, result[1].total_count

    assert_equal 'Subscribe Annotations', result[2].title
    assert_equal 2, result[2].valid_count
    assert_equal 4, result[2].total_count

    assert_equal 'YouTube Association', result[3].title
    assert_equal 2, result[3].valid_count
    assert_equal 4, result[3].total_count

    assert_equal 'Possible End Card Annotations', result[4].title
    assert_equal 1, result[4].valid_count
    assert_equal 4, result[4].total_count
  end
end
