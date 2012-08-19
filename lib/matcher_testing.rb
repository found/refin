str = "<p>{{ content_holder_1 }}</p><p>{{ content_holder_2 }}</p><p>{{ content_holder_3 }}</p><p>{{ content_holder_4 }}</p><p>{{ content_holder_5 }}</p><p>{{ content_holder_6 }}</p> <p>{{ content_holder_7 }}</p>"

def get_a_matcher(str_to_match)
  sel = str_to_match.match(/{{ content_holder_[0-9] }}/)[0]
  if sel
    puts ("String to Match: #{sel}")
    id_for_lookup = sel.gsub("{{ content_holder_", "").gsub(" }}", "")
    puts ("ID for lookup: #{id_for_lookup}")
    content_to_replace = ContentHolder.find(id_for_lookup) if ContentHolder.exists?(id_for_lookup)
    if content_to_replace
      puts "Content to replace: #{content_to_replace}"
      str_to_match = str_to_match.gsub(/#{sel}/, content_to_replace.body)
      get_a_matcher(str_to_match)
    else
      return str_to_match
    end
  else
    return str_to_match
  end
end

puts "Final String: #{get_a_matcher(str)}"