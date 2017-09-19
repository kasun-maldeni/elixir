# Closures in JavaScript vs Elixir

### Closures in JavaScript
```javascript
function outer() {
  var outerVal = 10;
  console.log(`outer function created outerVal: ${outerVal}`);
  return () => {
	  outerVal++;
    console.log(`closure updated outerVal to: ${outerVal}`);
  }
}

inner = outer();
inner();
inner();
inner();
```

The code above produces the following console output:
```
outer function created outerVal: 10
closure updated outerVal to: 11
closure updated outerVal to: 12
closure updated outerVal to: 13
```

### Closures in Elixir
```elixir
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
```

The code above produces the following console output:
```
outer function created outerVal: 10
closure updated outerVal to: 11
closure updated outerVal to: 11
closure updated outerVal to: 11
```
outerVal's value 10 gets fixed in the inner function, so the line is converted to `outerVal = 10 + 1`. That is why the number 11 always gets output to the console.
