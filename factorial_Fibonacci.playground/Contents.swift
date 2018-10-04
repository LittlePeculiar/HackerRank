// Factorial

func fac(_ n: Int) -> Int {
  guard n > 0 else { return 1 }
  return n * fac(n - 1)
}

let result = fac(4)


// Fibonacci
func fib(_ n: Int) -> Int {
  func fib(_ a: Int, _ b: Int, _ n: Int) -> Int {
    if n == 0 { return a }
    return fib(b, a+b, n-1)
  }
  return fib(0, 1, n)
}

// fib(0, 1, 3)
// fib(1, 1, 2)
// fib(1, 2, 1)
// fib(2, 3, 0)

let result2 = fib(3)
