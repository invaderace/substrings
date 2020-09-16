dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(my_string, dictionary)
  #first, convert my_string to an array.
  my_array = my_string.downcase.split

  #make an output hash.
  output = Hash.new
  
  #make an each loop that looks at all items in the substring/dictionary array.
  dictionary.each do |substring|
    #check if the substring is in each item of my_array (using .include? method)
    my_array.each do |item|
      if item.include?(substring)
        #add to the Hash 
        if output[substring]
          output[substring] += 1
        else
          output[substring] = 1
        end
        
      end
    end
  end

  #return the output hash
  return output
end

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)