class RomanNumeral
attr_reader :roman_num

  NUMERALS = {
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }

  def initialize
    @roman_num = []
  end

  def calculate(entered_num)
    int = entered_num.to_i
    NUMERALS.each { |key, val| (int/key).times { @roman_num << val ; int -= key } }
    @roman_num = @roman_num.join
  end
end
