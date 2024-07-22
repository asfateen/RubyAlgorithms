require 'set'

states_needed = Set["mt", "wa", "or", "id", "nv", "ut", "ca", "az"]
stations = {}
stations["kone"] = Set["id", "nv", "ut"] 
stations["ktwo"] = Set["wa", "id", "mt"]
stations["kthree"] = Set["or", "nv", "ca"]
stations["kfour"] = Set["nv", "ut"]
stations["kfive"] = Set["ca", "az"]

final_stations = Set.new

until states_needed.empty?
  best_station = nil
  states_covered = Set.new

  stations.each do |station, states_for_station|
    covered = states_needed & states_for_station
    if covered.length > states_covered.length
      best_station = station 
      states_covered = covered
    end
  end
  states_needed.subtract(states_covered)
  final_stations.add(best_station)

end
print final_stations
