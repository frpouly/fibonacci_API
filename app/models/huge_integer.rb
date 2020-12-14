# Useless now, but it took a while to code so it stays here

class HugeInteger
  attr_accessor :value
  @@MAX_SIZE_INDEX = 10000000000000000

  def initialize(val)
    if(val.is_a?(Integer))
      @value = []
      i = 0
      loop do
        @value[i] = val % @@MAX_SIZE_INDEX
        val = val - @value[i]
        val = val / @@MAX_SIZE_INDEX
        i += 1
      break if val == 0
      end
    else
      @value = val
    end
  end

  def +(obj)
    max_index = [self.value.size, obj.value.size].max - 1
    carry = 0
    new = []
    (0..max_index).each do |i|
      number1 = self.value[i].nil? ? 0 : self.value[i]
      number2 = obj.value[i].nil? ? 0 : obj.value[i]
      sum = carry + number1 + number2
      if(sum > @@MAX_SIZE_INDEX)
        new[i] = sum % @@MAX_SIZE_INDEX
        carry = sum - new[i]
      else
        new[i] = sum
      end
      carry /= @@MAX_SIZE_INDEX
    end
    if(carry > 0)
      i = new.size
      loop do
        new[i] = carry % @@MAX_SIZE_INDEX
        carry = carry - new[i]
        i += 1
        break if carry == 0
      end
    end
    return HugeInteger.new(new)
  end

  def to_s
    output = ""
    (@value.size - 1).downto 0 do |i|
      output += value[i].to_s
    end
    return output
  end

end