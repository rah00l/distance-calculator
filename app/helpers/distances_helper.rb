module DistancesHelper

  def formatted_distance(dist)
    if dist['distance'].present?
      dist['distance']
    elsif dist['error_code'].present?
      "You got error code of '#{dist['error_code']}' because of '#{dist['error_msg']}'"
    else
      "Somthing went wrong"
    end
  end
end
