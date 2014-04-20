module Test {
  require Json

  a = 1

  b = "Apple"

  struct Person {
    String firstname
    String lastname
    Int age
  }

  c = new Person("Larry", "Jones", 30)

  d = 1 + 1

  e = c.update(age: 31)

  fn add(a:Int, b:Int) Int {
    a + b
  }

  fn main {
    puts a
    puts b
    puts c
    puts d
    puts e
    puts add(2,2)
  }

}