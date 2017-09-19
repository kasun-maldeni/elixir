person = "Kasun"
sayHello = fn() -> IO.puts "hello there, #{person}" end

sayHello.();
person = "Adrian"
sayHello.();

