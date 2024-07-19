graph = {}
graph["you"] = ["alice", "bob", "claire"]
graph["bob"] = ["anuj", "peggy"]
graph["alice"] = ["peggy"]
graph["claire"] = ["thom", "jonny"]
graph["anuj"] = []
graph["peggy"] = []
graph["thom"] = []
graph["jonny"] = []

def person_is_seller(name) 
  name[-1] == 'm'
end

def search(name, graph)
  queue = []
  queue += graph[name]
  searched = []
  until queue.empty?
    person = queue.shift
    unless searched.include?(person)
      if person_is_seller(person)
        puts "#{person} is a mango seller!"
        return true
      else
        queue += graph[person]
        searched << person
      end
    end
  end
  false
end

print search("you", graph)