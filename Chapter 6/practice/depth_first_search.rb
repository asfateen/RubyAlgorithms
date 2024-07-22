def person_is_seller(name) 
  name[-1] == 'm'
end

def search(name, graph)
  stack = []
  stack += graph[name]
  searched = []
  until stack.empty?
    person = stack.pop
    unless searched.include?(person)
      if person_is_seller(person)
        puts "#{person} is a mango seller!"
        return true
      else
        stack += graph[person]
        searched << person
      end
    end
  end
  false
end



graph = {}
graph["you"] = ["alice", "bob", "claire"]
graph["bob"] = ["anuj", "peggy"]
graph["alice"] = ["peggy"]
graph["claire"] = ["thom", "jonny"]
graph["anuj"] = []
graph["peggy"] = []
graph["thom"] = []
graph["jonny"] = []

print search("you", graph)