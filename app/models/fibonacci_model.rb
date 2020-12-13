require_relative './huge_integer'

class FibonacciModel

  attr :result
  @num
  @@hash = { 0 => HugeInteger.new(0), 1 => HugeInteger.new(1)}
  @@cache = [0, 1]

  def initialize(num)
    @num = num
    @result = fibonacci2(num)
  end

  # old method to compute Fibonacci numbers, replaced by the Dijkstra method, much faster
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

  def fibonacci2(num)
    case num
    when 0
      return 0
    when 1
      return 1
    end
    if @@cache[num] != nil
      return @@cache[num]
    end
    if(num.odd?)
      @@cache[num] = fibonacci2(num / 2).pow(2) + fibonacci2(num / 2 + 1).pow(2)
    else
      half_fibo = fibonacci2(num / 2)
      @@cache[num] = ( 2 * fibonacci2(num / 2 - 1) + half_fibo) * half_fibo
    end
  end
end