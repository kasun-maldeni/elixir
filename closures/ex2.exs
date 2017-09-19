outer = fn() ->
  outerVal = 10
  IO.puts "outer function created outerVal: #{outerVal}"
  fn() ->
    outerVal = outerVal + 1
    IO.puts "closure updated outerVal to: #{outerVal}"
  end
end

inner = outer.()
inner.()
inner.()
inner.()

