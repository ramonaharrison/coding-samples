#
# A Simple Ruby 'Little Man Computer' Model
#    http://en.wikipedia.org/wiki/Little_man_computer
#    
#

instruction_counter = 0
calculator_display = 0
current_instruction = 0
mailbox = [901, 306, 901, 106, 902, 0]
in_basket = []
out_basket = []


def perform(instruction)

  calculator_display = 0
  mailbox = [901, 306, 901, 106, 902, 0]
  in_basket = []
  out_basket = []

  xx = instruction % 100

  if instruction < 10
    instruction = "00" + instruction.to_s
  else
    instruction = instruction.to_s
  end

  first, second, third = instruction.split('')

  if first == '0'                        # STOP
    puts(out_basket)
    if first == '1'                     # ADD xx
      calculator_display += xx
    elsif first == '2'                     # SUB xx
      calculator_display -= xx
    elsif first == '3'                     # STO xx
      mailbox[xx] = calculator_display
    elsif first == '4'                     # STA xx
    elsif first == '5'                     # LOAD xx
      calculator_display = mailbox[xx]
    elsif first == '6'                     # B xx
      instruction_counter = xx
    elsif first == '7'                     # BZ xx
      if calculator_display == 0
        instruction_counter = xx
      end
    elsif first == '8'                     # BP
      if calculator_display >= 0
        instruction_counter = xx
      end
    elsif first == '9' && third == '1'               # READ
      calculator_display = in_basket.shift
    elsif first == '9' && third == '2'               # PRINT
      out_basket.push(calculator_display)
    else
      puts "Error in instruction set" + first + second + third
    end
  end

  while instruction_counter < mailbox.length
    current_instruction = mailbox[instruction_counter]
    instruction_counter += 1
    perform(current_instruction)
  end
  puts(out_basket)
end
