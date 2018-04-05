temp_hash= { data: { rooms:
    [ { id: 1, room_number: "201", capacity: 50}, { id: 2, room_number: "301", capacity: 200 }, { id: 3, room_number: "1B", capacity: 100}
    ],
    events: [
      { id: 1, room_id: 2, start_time: 18, end_time: 20, attendees: 75 },
      { id: 2, room_id: 1, start_time: 10, end_time: 18, attendees: 25 },
      { id: 3, room_id: 2, start_time: 10, end_time: 18, attendees: 20 },
      { id: 4, room_id: 3, start_time: 18, end_time: 21, attendees: 56 },
    ]
  }
}

room_array=temp_hash[:data][:rooms]

def capacity(room_array)
  room_array.each do |value|
    if value[:room_number] == "201"
      return value[:capacity]
    end
  end
end

 p capacity(room_array)

events_array=temp_hash[:data][:events]

def events(room_array, events_array)
  events_array.each do |value|
    if value[:room_id] == 1 && value[:attendees] <= capacity(room_array)
      return "ok"
    else
      p "get outta here"
    end
  end
end

p events(room_array, events_array)
