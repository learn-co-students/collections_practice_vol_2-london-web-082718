# your code goes here

require "pry"
def begins_with_r(array)
array.all? { |r| r[0] == "r" }
end

def contain_a(array)
array.select { |letter| letter.include?("a") }
end

def first_wa(array)
  array.detect { |word| word.to_s.start_with?("wa") }
end

def remove_non_strings(array)
  array.delete_if { |array| !(array.is_a? String) }
  end
  

def count_elements(array)
  array.map do |element| 
    element[:count] ||= array.count(element)
    array.delete(element)
  end

end


def find_cool(hash)
  hash.select do |x|
    x[:temperature] == "cool"
  end
end

def merge_data(keys, data)
  keys.each do |x|
    y = x.values[0]
    data[0][y].merge!(x)
    #binding.pry
  end
  data[0].values
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |school, location|
    organized_schools[location[:location]] ||= []
    organized_schools[location[:location]] << school
  end
  organized_schools
end