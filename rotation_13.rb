# ROTATION 13

def rotaton13(str)
  a_to_z_array = ('a'..'z').to_a
  a_to_z_hash = a_to_z_array.map.with_index{ |char, index| [char, index] }.to_h
  
  input_str_arr = str.split(//)

  input_str_arr.each_with_index do |char, index|
    a_to_z_index = a_to_z_hash[char]

    if a_to_z_index < 13
      element_to_replace_index = ((a_to_z_index % 13) + 13)
    else
      element_to_replace_index = (a_to_z_index % 13)
    end

    input_str_arr[index] = a_to_z_array[element_to_replace_index]
  end
end