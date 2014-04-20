module PoBoy
 class IntegerLiteral < Treetop::Runtime::SyntaxNode
  def to_ast
    return [:int, self.text_value.to_i]
  end
 end
 
 class StringLiteral < Treetop::Runtime::SyntaxNode
  def to_ast
    return [:string, eval(self.text_value)]
  end
 end
 
 class FloatLiteral < Treetop::Runtime::SyntaxNode
  def to_ast
    return [:float, self.text_value.to_f]
  end
 end
 
 class Identifier < Treetop::Runtime::SyntaxNode
  def to_ast
    return [:identifier, self.text_value.to_sym]
  end
 end

 class Assignment < Treetop::Runtime::SyntaxNode
   def to_ast
     return [:assignment, self.elements.map {|x| x.to_ast}]
   end
 end
 
 class Expression < Treetop::Runtime::SyntaxNode
 end

 class Type < Treetop::Runtime::SyntaxNode
  def to_ast
    return [:type, self.text_value.to_sym]
  end
 end

class Argument < Treetop::Runtime::SyntaxNode
   def to_ast
     return [:argument, self.elements.map {|x| x.to_ast}]
   end
end

class Function < Treetop::Runtime::SyntaxNode
   def to_ast
     return [:function, self.elements.map {|x| x.to_ast}]
   end
end
 
 class Body < Treetop::Runtime::SyntaxNode
   def to_ast
     return [:body, self.elements.map {|x| x.to_ast}]
   end
 end
end