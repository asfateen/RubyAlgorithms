class Activity
  attr_accessor :start, :finish

  def initialize(start, finish)
    @start = start
    @finish = finish
  end
end

# pick the available activity with the smallest finish time and never look back
def activity_selection(activities)
  activities.sort_by!(&:finish) 
  result = []
  busy_until = 0
  activities.each do |activity|
    if activity.start >= busy_until
      result.append(activity)
      busy_until = activity.finish
    end
  end
  result
end


activities = [
  Activity.new(1, 4),
  Activity.new(3, 5),
  Activity.new(0, 6),
  Activity.new(5, 7),
  Activity.new(3, 8),
  Activity.new(5, 9),
  Activity.new(6, 10),
  Activity.new(8, 11),
  Activity.new(8, 12),
  Activity.new(2, 13),
  Activity.new(12, 14)
]

selected_activities = activity_selection(activities)
puts "Selected activities:"
selected_activities.each do |activity|
  puts "Start: #{activity.start}, Finish: #{activity.finish}"
end
