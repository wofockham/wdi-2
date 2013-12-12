class Number
  def self.bin2dec(binstr)
    result = 0
    exponent = 0
    binstr.reverse.split('').each do |digit|
      if digit == '1'
        result += 2 ** exponent
      end
      exponent += 1
    end
    result
  end

  def self.moderatebin2dec(binstr)
    result = binstr.reverse.split('').each_with_index.map do |digit, i|
      digit.to_i * (2 ** i)
    end
    result.reduce(:+)
  end
end
