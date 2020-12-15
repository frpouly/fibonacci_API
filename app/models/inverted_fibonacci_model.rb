class InvertedFibonacciModel
  attr :result
  @@PHI = 1.618033988749895

  def initialize(number)
    @num = number
    compute_inverted_fibonacci
  end

  def compute_inverted_fibonacci
    @result = @num == 0 ? 0 : (Math.log(@num * Math.sqrt(5) + 1/2)/Math.log(@@PHI)).round()
  end
end