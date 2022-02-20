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

# Number div := Number getSlot("/")
# OperatorTable addOperator("div", 2)
# Number / := method(n, if(n == 0, 0, self div n))

List sum := method(self reduce(+))
List sumAll := method(self reduce(acc, current, acc + current sum, 0))
List myAverage := method((self sum) / (self size))

list(1, 2, 3, 4) sum println
list(list(1, 2, 3, 4), list(5, 6, 7, 8)) sumAll println
list(1, 2, 3, 4) myAverage println

TwoDimensional := List clone
TwoDimensional dim := method(x, y,
  matrix := TwoDimensional clone
  matrix = matrix setSize(y)
  matrix mapInPlace(_, list() setSize(x))
  matrix
)

TwoDimensional set := method(x, y, value,
  self at(y - 1) atPut(x - 1, value)
)

TwoDimensional get := method(x, y,
  self at(y - 1) at(x - 1)
)

myDimensional := TwoDimensional dim(5, 2)
myDimensional set(3, 2, "Memes")
myDimensional set(2, 1, 8)
myDimensional get(3, 2) println
myDimensional println

