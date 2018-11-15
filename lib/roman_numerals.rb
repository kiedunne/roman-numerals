class RomanNumerals

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
  
  def calculate(number)
    @new_number = []
    NUMERALS.each { |key, val| (number/key).times { @new_number << val ; number -= key } }
    @new_number.join
  end

end
