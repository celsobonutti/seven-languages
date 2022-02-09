fib := method(n,
  if(n == 0, 0,
    if(n == 1, 1, fib(n - 1) + fib(n - 2))))

fib(4) println

fib_while := method(n,
  if (n == 0, 0,
    acc := 1
    result := 0

    for(count, 1, n,
    temp := acc
    acc = result + acc
    result = temp)

    result))

fib_while(4) println
