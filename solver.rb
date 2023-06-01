class Solver
  def factorial(num)
    raise ArgumentError, 'Factorial is not defined for negative numbers.' if num.negative?

    result = (1..num).reduce(1, :*)
    puts result # Output: 120
    result
  end

  def reverse(word)
    result = word.reverse
    puts result # Output: olleh
    result
  end

  def fizzbuzz(num)
    result = if (num % 3).zero? && (num % 5).zero?
               'fizzbuzz'
             elsif (num % 3).zero?
               'fizz'
             elsif (num % 5).zero?
               'buzz'
             else
               num.to_s
             end
    puts result # Output: fizz, buzz, fizzbuzz, 7
    result
  end
end
