#sample definition of the language called poboy. A functional language that borrows from Go, Scala, and Elixir


#module defintion. Also this is a comment

module Test {

  #require another module.
  require Json

  #define variable. All variables are immutable. Type will be defined be value assigned
  a = 1

  #define another variable that is a string. '`' would be used to define variables because ' and " are extremely common. of course you can escape ` if it shows up in a string
  b = `Apple`

  #Strings can be multiline as well with no special contructs
  c = `A Life in the times of a fledgling programming language.
  I was named after a popular sandwich in New Orleans.`


  #define a type. types hold data.
  type Person {
    String firstname
    String lastname
    Int age
  }

  # define an interface. Like go, types do not have to explicitly inherit from an interface
  interface Age {
    Int age
  }

  #define a new Person variable
  c = Person(`Larry`, `Jones`, 30)

  #variable defined by an expression. Everything is an expression and should return something.
  d = 1 + 1

  #struct will have an update function that allows you to produce a new version of the struct with updated values
  e = c.update(age: 31)

  #A function definition. the last line will be the value returned
  fn add(a:Int, b:Int):Int {
    a + b
  }

  #An example of a pattern matched definition. Also notice the function defintion shorthand
  fn add(a:3, b:Int):Int = a + b

  #Another example of a pattern matched definition
  fn addAge(a:Person(age:12), inc:Int):Person{
    a
  }

  fn addAge(a:Person, inc:Int):Person{

    #A case statement. There will be no if statements at all.
    case a.age {
      20 =>
        a.update(age: 21)
      _ =>
        a.update(age: a.age + inc)
    }

  }

  fn incrementItems(items:Enum){
    #recursion is king. No While or for loops. Also notice the lambda expression
    Enum.map(items, fn(x){ x + 1 })
  }

  #function parenthesis and type are optional. If not type defined, assumed to be void.
  fn main {
    puts a
    puts b
    puts c
    puts d
    puts e
    puts add(2,2)
  }

}