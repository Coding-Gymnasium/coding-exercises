# frozen_string_literal: true

# LocomotiveEngineer class
class LocomotiveEngineer
  def self.generate_list_of_wagons(*wagons)
    wagons
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    first, second, third, *rest_of_first = each_wagons_id
    [third, *missing_wagons, *rest_of_first, first, second]
  end

  def self.add_missing_stops(stops)
    puts stops
  end

  def self.extend_route_information(_route, _more_route_information)
    raise 'Please implement the LocomotiveEngineer.extend_route_information method'
  end
end
