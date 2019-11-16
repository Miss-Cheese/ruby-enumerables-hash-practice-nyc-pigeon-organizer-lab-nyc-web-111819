def nyc_pigeon_organizer(data)

pigeon_hash = {}

data[:color].keys.each {|color|
pigeon_color(pigeon_hash, data[:color][color], color.to_s)
}

data[:gender].keys.each {|gender|
pigeon_gender(pigeon_hash, data[:gender][gender], gender.to_s)
}

data[:lives].keys.each {|locale|
pigeon_locale(pigeon_hash, data[:lives][locale], locale)
}

# pigeon_color(pigeon_hash, data[:color][:purple], "purple")
# pigeon_color(pigeon_hash, data[:color][:grey], "grey")
# pigeon_color(pigeon_hash, data[:color][:white], "white")
# pigeon_color(pigeon_hash, data[:color][:brown], "brown")

# pigeon_gender(pigeon_hash, data[:gender][:female], "female")
# pigeon_gender(pigeon_hash, data[:gender][:male], "male")

# pigeon_locale(pigeon_hash, data[:lives]["Subway"], "Subway")
# pigeon_locale(pigeon_hash, data[:lives]["Central Park"], "Central Park")
# pigeon_locale(pigeon_hash, data[:lives]["Library"], "Library")
# pigeon_locale(pigeon_hash, data[:lives]["City Hall"], "City Hall")

  puts "1------------------------"
  pp pigeon_hash
  puts "2------------------------"

  pigeon_hash
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


def pigeon_gender(pigeon_hash, gender_array, gender)

  gender_array.each  {|pigeon_name|

    local_hash_value = pigeon_hash[pigeon_name]
    if local_hash_value == nil
      local_hash_value = {}
      pigeon_hash[pigeon_name] = local_hash_value
    end

    local_hash_value[:gender] = [gender]
  }
end


def pigeon_locale(pigeon_hash, locale_array, locale)

  locale_array.each  {|pigeon_name|

    local_hash_value = pigeon_hash[pigeon_name]
    if local_hash_value == nil
      local_hash_value = {}
      pigeon_hash[pigeon_name] = local_hash_value
    end

    local_hash_value[:lives] = [locale]
  }
end
