# Write your code here.
def badge_maker(speaker)
  "Hello, my name is #{speaker}."
end

def batch_badge_creator(speakers)
  badges = []
  speakers.each do |badge|
    badges.push(badge_maker(badge))
  end
  badges
end

def assign_rooms(speakers)
  rooms = []
  speakers.each_with_index do |speaker,room|
    rooms.push("Hello, #{speaker}! You'll be assigned to room #{room+1}!")
  end
  rooms
end

def printer(attendee)
  num_attendees = attendee.length
  count = 0
  while count < num_attendees do
    puts batch_badge_creator(attendee)[count]
    puts assign_rooms(attendee)[count]
    count += 1
  end
end
