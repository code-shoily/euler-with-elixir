defmodule EulerWithElixir.P6 do
    import Enum

    @problem_description """
    The sum of the squares of the first ten natural numbers is,
    1^2 + 2^2 + ... + 10^2 = 385

    The square of the sum of the first ten natural numbers is,
    (1 + 2 + ... + 10)^2 = 55^2 = 3025

    Hence the difference between the sum of the squares of the first ten natural 
    numbers and the square of the sum is 3025 − 385 = 2640.

    Find the difference between the sum of the squares of the first one hundred 
    natural numbers and the square of the sum.
    """
    @range 1..100

    defp sum_of_squares(r) do
        r |> map(&:math.pow(&1, 2)) |> reduce(&+/2)
    end

    defp square_of_sum(r) do
        :math.pow (r |> reduce(&+/2)), 2
    end

    def solution do
        square_of_sum(@range) - sum_of_squares(@range)
    end
end