class Solver
  def factorial(n)
    raise ArgumentError, 'Argument must be a non-negative integer' if n.negative?
    return 1 if n.zero?

    (1..n).reduce(:*)
  end
end



solver = Solver.new
puts solver.factorial(5) # Output: 120
