require_relative './roman_numeral.rb'

class Front
attr_reader :number

  def initialize
    puts 'Type a number'
    @number = gets.chomp.to_i
    puts RomanNumeral.new.calculate(@number)
  end

end
