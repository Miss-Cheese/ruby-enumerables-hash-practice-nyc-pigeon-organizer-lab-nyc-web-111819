def nyc_pigeon_organizer(data)
  # Iterate over the hash above, collecting each pigeon by name
  # and insert it as the key of a new hash.
  #
  # Each of these hashes should have :color, :gender, and :lives keys
  # assigned to arrays of info about that particular pigeon

pigeon_hash = {}



names_array = data[:color][:purple]

names_array.each  {|pigeon_name|
pigeon_hash[pigeon_name] = {:color => ["purple"]}
}


  puts "1------------------------"
  pp pigeon_hash

  puts "2------------------------"
end
