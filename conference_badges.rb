def create_badge(*names)
  badge_array = []
  names.each { |name| badge_array << "Hello, my name is #{name}." }

  badge_array
end

def get_rooms(list)
  rooms = [1, 2, 3, 4, 5, 6, 7]
  room_assignments = []
  speaker_counter = 0
  rooms.each do |room|
    room_assignments << "Hello, #{list[speaker_counter].split(' ')[-1].sub('.', '')}! You'll be assigned to room #{room}!"
    speaker_counter += 1
  end

  room_assignments
end

def print_stuff(badge_list, room_assignments)
  puts badge_list
  puts room_assignments
end

def generate
  badges = create_badge("Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz")
  rooms = get_rooms(badges)
  print_stuff(badges, rooms)
end

generate