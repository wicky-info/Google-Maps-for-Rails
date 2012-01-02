require 'gmaps4rails/js_handler'
require 'gmaps4rails/json_handler'
require 'gmaps4rails/geocoding'
require 'gmaps4rails/acts_as_gmappable'
require 'gmaps4rails/extensions/array'
require 'gmaps4rails/extensions/hash'
require 'gmaps4rails/helper/gmaps4rails_helper'

module Gmaps4rails

  class GeocodeStatus         < StandardError; end
  class GeocodeNetStatus      < StandardError; end
  class GeocodeInvalidQuery   < StandardError; end
  class DirectionStatus       < StandardError; end
  class DirectionNetStatus    < StandardError; end
  class DirectionInvalidQuery < StandardError; end

  def Gmaps4rails.condition_eval(object, condition)
    case condition
    when Symbol     then object.send condition
    when Proc       then condition.call(object)
    when TrueClass  then condition
    when FalseClass then condition
    end
  end
  
end