
class FibonacciModel

  @num

  def initialize(num)
    @num = num
  end

  def fibonacci
    first_num, second_num = [0, 1]
    (@num).times do
      first_num, second_num = second_num, first_num + second_num
    end
    first_num
  end
end