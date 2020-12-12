
class FibonacciModel

  @num
  @@hash = { 0 => 0, 1 => 1}

  def initialize(num)
    @num = num
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