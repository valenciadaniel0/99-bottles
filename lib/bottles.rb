#
# class Bottles
#     def verse(bottles_number)
#         verse = "#{bottles_number == 0 ? 'No more' : bottles_number} #{bottles_number == 1? 'bottle' : 'bottles'} of beer on the wall, "
#         verse += "#{bottles_number == 0 ? 'no more' : bottles_number} #{bottles_number == 1? 'bottle' : 'bottles'} of beer.\n"
#         verse += "Take #{bottles_number == 1? 'it' : 'one'} down and pass it around, " if bottles_number > 0
#         verse += "Go to the store and buy some more, " if bottles_number == 0
#         verse += "#{bottles_number > 0? (bottles_number == 1 ? 'no more' : bottles_number - 1) : 99} #{bottles_number == 2? 'bottle' : 'bottles'} of beer on the wall.\n"
#         verse
#     end
#
#     def verses(bottles_number1, bottles_number2)
#         verses = ''
#         while bottles_number1 >= bottles_number2
#             verses += "\n" unless verses.length == 0
#             verses += verse(bottles_number1)
#             bottles_number1 -= 1
#         end
#         verses
#     end
#
#     def song
#         verses(99, 0)
#     end
# end

class Bottles
  def song
    verses(99, 0)
  end

  def verses(upper, lower)
    upper.downto(lower).collect { |i| verse(i) }.join("\n")
  end

  def verse(number)
    case number
    when 0
      'No more bottles of beer on the wall, ' +
        "no more bottles of beer.\n" +
        'Go to the store and buy some more, ' +
        "99 bottles of beer on the wall.\n"
    when 1
      '1 bottle of beer on the wall, ' +
        "1 bottle of beer.\n" +
        'Take it down and pass it around, ' +
        "no more bottles of beer on the wall.\n"
    when 2
      '2 bottles of beer on the wall, ' +
        "2 bottles of beer.\n" +
        'Take one down and pass it around, ' +
        "1 bottle of beer on the wall.\n"
    else
      "#{number} bottles of beer on the wall, " +
        "#{number} bottles of beer.\n" +
        'Take one down and pass it around, ' +
        "#{number - 1} bottles of beer on the wall.\n"
    end
  end
end
