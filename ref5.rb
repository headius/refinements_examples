module BadRefinement
  refine String do
    def upcase
      reverse
    end
  end
end

class Quux
  using BadRefinement
end

class Baz < Quux
  def up_and_add(str1, str2)
    str1.upcase + str2.upcase
  end
end