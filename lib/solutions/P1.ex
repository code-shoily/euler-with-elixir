defmodule EulerWithElixir.P1 do
  @problem_description """
  If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
  Find the sum of all the multiples of 3 or 5 below 1000.
  """

  def solution do
    import Enum

    3..999
      |> filter(&(rem(&1, 3) == 0 || rem(&1, 5) == 0))
      |> reduce(&+/2)
  end
end
