class Solver
  def factorial(n)
    raise ArgumentError, 'Factorial is not defined for negative numbers.' if n.negative?

    result = (1..n).reduce(1, :*)
    puts result # Output: 120
    result
  end

  def reverse(word)
    result = word.reverse
    puts result # Output: olleh
    result
  end

  def fizzbuzz(n)
    result = case
             when (n % 3).zero? && (n % 5).zero? then 'fizzbuzz'
             when (n % 3).zero? then 'fizz'
             when (n % 5).zero? then 'buzz'
             else n.to_s
             end
    puts result # Output: fizz, buzz, fizzbuzz, 7
    result
  end
end
