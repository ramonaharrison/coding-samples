grid = []
temp_grid = []

201.times do
  grid.push(' ')
  temp_grid.push(' ')
end

grid[50] = '█'

def rules(left, middle, right)

  if [left, middle, right] == [' ', ' ', ' ']
    return ' '
  end

  if [left, middle, right] == [' ', ' ', '█']
    return '█'
  end

  if [left, middle, right] == [' ', '█', ' ']
    return ' '
  end

  if [left, middle, right] == [' ', '█', '█']
    return '█'
  end

  if [left, middle, right] == ['█', ' ', ' ']
    return '█'
  end

  if [left, middle, right] == ['█', ' ', '█']
    return ' '
  end

  if [left, middle, right] == ['█', '█', ' ']
    return '█'
  end

  if [left, middle, right] == ['█', '█', '█']
    return ' '
  end

end


50.times do

  x = 1
  while x < 200
    left = grid[x - 1]
    middle = grid[x]
    right = grid[x + 1]

    temp_grid[x] = rules(left, middle, right)

    x += 1
  end

  grid = temp_grid

  puts grid.join('')

end
