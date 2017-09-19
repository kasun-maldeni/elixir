# Closures in JavaScript vs Elixir

### Closures in JavaScript
```javascript
var person = "Kasun"
var sayHello = () => console.log(`hello there, ${person}`)

sayHello();
person = "Adrian"
sayHello();
```

The code above produces the following console output:
```
hello there, Kasun
hello there, Adrian
```

### Closures in Elixir
```elixir
person = "Kasun"
sayHello = fn() -> IO.puts "hello there, #{person}" end

sayHello.();
person = "Adrian"
sayHello.();
```

The code above produces the following console output:
```
hello there, Kasun
hello there, Kasun
```

Elixir even produces a warning to show that the second variable assignment to "Adrian" is unused. In Elixir, the value of person gets fixed at the time the anonymous function gets created.
