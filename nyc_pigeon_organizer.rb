def nyc_pigeon_organizer(data)


pigeon_hash = {}

names_array = data[:color][:purple]



names_array.each  {|pigeon_name|
pigeon_hash[pigeon_name] = {:color => ["purple"]}
}

names_array = data[:color][:grey]

names_array.each  {|pigeon_name|

  local_hash_value = pigeon_hash[pigeon_name]
  if local_hash_value == nil
    local_hash_value = {}
    pigeon_hash[pigeon_name] = local_hash_value
  end


  if !local_hash_value[:color]
    local_hash_value[:color] = []
  end

  local_hash_value[:color] << "grey"

}


  puts "1------------------------"
  pp pigeon_hash

  puts "2------------------------"
end
