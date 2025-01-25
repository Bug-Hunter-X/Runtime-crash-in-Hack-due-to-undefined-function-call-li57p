function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function baz(x: int): int {
  return bar(x) - 1;
}

function main(): void {
  var x: int = 10;
  var y: int = baz(x);
  print_int(y);
}

This code looks correct, and it compiles. However, it will crash at runtime when main() is called and tries to call print_int(). The issue is that print_int() isn't defined in Hack (it's a function from C).  The code compiles because the type checker doesn't know about the underlying implementation details of print_int().