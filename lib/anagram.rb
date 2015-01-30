class Array
  define_method(:anagram) do
    array_anagram = self.shift().split("").sort()
    array_to_return = []
    self.each() do |element|
      array_compare = element.split("")
      if array_anagram == array_compare.sort()
        array_to_return.push(array_compare.join())
      else
        included = true
        array_anagram_tester = array_anagram.dup()
        array_compare.each() do |letter|
          if array_anagram_tester.include?(letter)
            array_anagram_tester.delete(letter)
          else
            included = false
          end
        end
        if included == true
          array_to_return.push(array_compare.join())
        end
      end
    end
    array_to_return
  end
end
