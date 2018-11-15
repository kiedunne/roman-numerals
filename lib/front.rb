require_relative './roman_numerals.rb'

class Front
attr_reader :number

  def initialize
    puts 'Type a number'
    @number = gets.chomp.to_i
    puts RomanNumerals.new.calculate(@number)
  end

end

f = Front.new
f
