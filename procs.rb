# Lambda - return Returns from lambda.
def lambda_method
  puts "method start"
  p = lambda { puts "entering lambda"; break }
  p.call
  puts "method end"
end
lambda_method

# Proc - return Returns from enclosing method.
def proc_method(&my_proc)
  puts "method start"
  my_proc.call
  puts "method end"
end
proc_method { puts "entering proc"; break }

# Method Object.
m = 5.method(:succ)
puts m.call