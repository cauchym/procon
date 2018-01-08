n = gets.to_i
a = []
n.times{
  tmp = gets.to_i
  if !(a.include?(tmp)) then
    a.push(tmp)
  end
}
puts a.length
