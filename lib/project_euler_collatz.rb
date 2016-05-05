def even_next(n)
  n / 2
end

def odd_next(n)
  (n * 3) + 1
end

def next_value(n)
  if n.even?
    even_next(n)
  else
    odd_next(n)
  end
end

def collatz(n)
  i = n
  coll_array = [n]
  until i == 1
    next_value(i)
    coll_array << next_value(i)
    i = next_value(i)
  end
  coll_array
end

def longest_collatz
  max = 0
  first_digit = 0
  ints = (1..1000000)
  ints.each do |i|
    if collatz(i).length > max
      max = collatz(i).length
      first_digit = i
    end
  end
  first_digit
end
