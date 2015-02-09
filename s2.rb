def sierpinski_triangle(n)
  triangle = ["█"]
  n.times do |i|
    sp = " " * (2**i)
    triangle = triangle.collect {|x| sp + x + sp} +
               triangle.collect {|x| x + " " + x}
  end
  triangle
end

puts sierpinski_triangle(6)
