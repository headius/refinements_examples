module Camelize
  refine String do
    def camelize
      dup.gsub(/_([a-z])/) { $1.upcase }
    end
  end
end

class Foo
  using Camelize

  def camelize_string(str)
    str.camelize
  end
end
