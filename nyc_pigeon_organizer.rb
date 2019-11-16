def nyc_pigeon_organizer(data)

pigeon_hash = {}

pigeon_color(pigeon_hash, data[:color][:purple], "purple")
pigeon_color(pigeon_hash, data[:color][:grey], "grey")
pigeon_color(pigeon_hash, data[:color][:white], "white")
pigeon_color(pigeon_hash, data[:color][:brown], "brown")

  puts "1------------------------"
  pp pigeon_hash

  puts "2------------------------"
end


def pigeon_color(pigeon_hash, color_name_array, color)

  color_name_array.each  {|pigeon_name|

    local_hash_value = pigeon_hash[pigeon_name]
    if local_hash_value == nil
      local_hash_value = {}
      pigeon_hash[pigeon_name] = local_hash_value
    end


    if !local_hash_value[:color]
      local_hash_value[:color] = []
    end

    local_hash_value[:color] << color

  }

end
