a = [1,2,3,4,5]
puts a.inspect
puts "HELLO2"
a.push 40
puts a.inspect
puts "HELLO3"
a << 30
puts a.inspect
puts "HELLO4"
a.pop
a.shift
puts a.inspect
puts "HELLO5"
a.unshift 1
puts a.inspect
puts "HELLO6"
puts a.first.inspect
puts a.include? 3
puts a.last.inspect
puts a.sum.inspect
puts a.max.inspect
puts a.size.inspect
a.append 5
puts "HELLO7"
puts a.minmax.inspect
puts a.minmax.inspect
puts a.sort.inspect
puts a.methods.inspect
a.map {|n| puts n*2}
a2 = a.select {|n| n.even?}
puts a2.inspect

