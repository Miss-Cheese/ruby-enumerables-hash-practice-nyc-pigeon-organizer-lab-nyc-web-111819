def nyc_pigeon_organizer(data)
  # Iterate over the hash above, collecting each pigeon by name
  # and insert it as the key of a new hash.
  #
  # Each of these hashes should have :color, :gender, and :lives keys
  # assigned to arrays of info about that particular pigeon

pigeon_hash = {}



names_array = data[:color][:purple]

index = 0
while index < names_array.count do
  pigeon_name = names_array[index]

  pigeon_hash[pigeon_name] = {:color => ["purple"]}

  index += 1
end

  puts "1------------------------"
  pp pigeon_hash

  puts "2------------------------"
end
