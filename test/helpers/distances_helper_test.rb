class DistancesHelperTest < ActionView::TestCase
  
  test 'formatted_distance with calculated distance in km' do
    response_option = { "distance"=>1536.429 }

    assert_equal 1536.429, formatted_distance(response_option)
  end

  test 'formatted_distance with error code and msg' do
    response_option = { "error_code"=>400, "error_msg"=>"Invalid request." }

    assert_match /Invalid request./, formatted_distance(response_option)
  end

end