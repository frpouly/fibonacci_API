require_relative './huge_integer'

class FibonacciModel

  attr :result
  @num
  @@hash = { 0 => HugeInteger.new(0), 1 => HugeInteger.new(1)}
  #@@hash = { 0 => 0, 1 => 1}

  def initialize(num)
    @num = num
    @result = fibonacci
  end

  def fibonacci
    if(@@hash[@num])
      return @@hash[@num]
    else
      (@@hash.size..@num).each { |i|
        @@hash[i] = @@hash[i - 1] + @@hash[i - 2]
      }
      return @@hash[@@hash.size - 1]
    end
  end
end