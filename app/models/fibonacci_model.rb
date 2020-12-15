# frozen_string_literal: true

# Computes the Fibonacci value given a number
class FibonacciModel
  attr_reader :result
  @@cache = [0, 1]

  def initialize(num)
    @num = num
    @result = fibonacci(num)
  end

  private

  def fibonacci(num)
    return 0 if num.eql? 0
    return 1 if num.eql? 1
    return @@cache[num] unless @@cache[num].nil?

    compute_fibonacci_number(num)
  end

  def compute_fibonacci_number(num)
    if num.odd?
      compute_when_odd num
    else
      compute_when_even num
    end
  end

  def compute_when_odd(num)
    @@cache[num] = fibonacci(num / 2).pow(2) + fibonacci(num / 2 + 1).pow(2)
  end

  def compute_when_even(num)
    half_fibonacci = fibonacci(num / 2)
    @@cache[num] = (2 * fibonacci(num / 2 - 1) + half_fibonacci) * half_fibonacci
  end
end
