class FibonacciModel

  attr_reader :result
  @@cache = [0, 1]

  def initialize(num)
    @num = num
    @result = fibonacci(num)
  end

  def fibonacci(num)
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
      @@cache[num] = fibonacci(num / 2).pow(2) + fibonacci(num / 2 + 1).pow(2)
    else
      half_fibonacci = fibonacci(num / 2)
      @@cache[num] = ( 2 * fibonacci(num / 2 - 1) + half_fibonacci) * half_fibonacci
    end
  end
end