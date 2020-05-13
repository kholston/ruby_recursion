# This program implements methods that returns 
# the value of the nth amount of members of 
# the Fibonacci Sequence.

def fibs( n )
  result = [0]

  return "Error" if n < 0
  return result  if n == 0

  old_fib = 0
  new_fib = 1
  tempfib = 0

  result << new_fib

  (n - 2).times do
    tempfib = new_fib
    new_fib = old_fib + new_fib
    old_fib = tempfib
    result << new_fib
  end
  result
end

puts '#fibs is the iterative method, fibs(8) should equal [0,1,1,2,3,5,8,13]'
puts "The output of fibs(8) is #{fibs(8)}"
puts " "


def fibs_rec(num)
  return result = [0] if num == 1
  return result = [ 0, 1 ] if num == 2

  result = fibs_rec(num - 1)
  result << result[-1] + result [-2]
end

puts '#fibs_rec is the recursive method, fibs_rec(8) should also equal [0,1,1,2,3,5,8,13]'
puts "The output of fibs_rec(8) is #{fibs_rec(8)}"
