class RomanNumeral
attr_reader :entered_num, :roman_num

  NUMERALS = {
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    5 => 'V',
    4 => 'IV',
    1 => 'I',
  }

  def initalize(entered_num)
    @entered_num = entered_num
  end

  def calculate(entered_num)
    @roman_num = []
    NUMERALS.each { |key, val| (entered_num/key).times { @roman_num << val ; entered_num -= key } }
    @roman_num.join
  end
end
