def find_lowest_cost_node(costs, processed)
  lowest_cost = Float::INFINITY
  lowest_cost_node = nil

  costs.keys.each do |node|
    cost = costs[node]
    if cost < lowest_cost && !processed.include?(node)
      lowest_cost = cost
      lowest_cost_node = node
    end
  end
  lowest_cost_node
end


graph = {}
graph["a"] = {}
graph["a"]["fin"] = 1
graph["b"] = {} 
graph["b"]["a"] = 3 
graph["b"]["fin"] = 5
graph["fin"] = {}


costs = {}
costs["a"] = 6 
costs["b"] = 2 
costs["fin"] = Float::INFINITY


parents = {}
parents["a"] = "start"
parents["b"] = "start" 
parents["fin"] = nil
processed = []
node = find_lowest_cost_node(costs, processed)
until node.nil?
  cost = costs[node]
  neighbors = graph[node]

  neighbors.keys.each do |n|
    new_cost = cost + neighbors[n]
    if costs[n] > new_cost
      costs[n] = new_cost
      parents[n] = node
    end
  end
      processed << node
      node = find_lowest_cost_node(costs,processed)
end
puts "Costs: #{costs}"
puts "Parents: #{parents}"

path = []

current_node = "start"
parents_inverted = parents.invert
until current_node == "fin"
  path << current_node
  current_node = parents_inverted[current_node]
end
path << "fin"
puts "Path: #{path.join(' -> ')}"

