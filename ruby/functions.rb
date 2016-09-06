def factorial(n) 
i= 1
resultado= 1
while i <= n
resultado= resultado * i
i += 1 
end
  return resultado
end 

def reverse(string)
  string.chars.sort_by.with_index { |_, i| -i }.join
end


def sort(array)
  aux = 0

  array.each do |i|
    i = 0
    j = 1
    while (j < array.size)
      if array[i] > array[j]
        aux = array[i] 
        array[i] = array[j]
        array[j] = aux 
      end
    i+=1
    j+=1
    end
  end  
 array
end

def upcase(array)
  array.upcase
end