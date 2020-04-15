def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  names.map { |name| badge_maker(name) }
end

def assign_room(name, room)
  "Hello, #{name}! You'll be assigned to room #{room}!"
end

def assign_rooms(names)
  room_assignments = []
  names.each_with_index { |name, room| room_assignments << assign_room(name, room + 1) }
  room_assignments
end

def printer(names)
  batch_badge_creator(names).each { |badge| puts badge }
  assign_rooms(names).each { |room| puts room }
end
