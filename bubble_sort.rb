require 'pry'

def sort(numbers)
  length = numbers.length
  sorted = false

  until(sorted)
    count = 0
    for i in (0...length)
      unless i == length - 1
        if numbers[i] > numbers[i + 1]
          temp = numbers[i + 1]
          numbers[i + 1] = numbers[i]
          numbers[i] = temp
          count += 1
        end
      end
    end
    sorted = true if count == 0
  end

  numbers
  
end

p sort([4, 3, 78, 2, 0, 2])