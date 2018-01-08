n, m = gets.chomp.split(" ").map(&:to_i)
ar = []
b = []
n.times{
  x, y = gets.chomp.split(" ").map(&:to_i)
  ar.push(x)
  b.push(y)
}

a = ar.max
b2 = b.select{|e| e > a}
b2.sort!.reverse!

d = 0
count = 0
while m > d
  d += b2[0]
  b2.slice!(0)
  count += 1
  if b2.length == 0
    break
  end
end

if m <= d
  puts count
else
  r = (m-d)/a
  if (m-d)%a == 0 then
    puts count + r
  else
    puts count + r + 1
  end
end
