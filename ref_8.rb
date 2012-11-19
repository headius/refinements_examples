module WeirdPlus
  refine String do
    def +(other)
      "#{self} plus #{other}"
    end
  end
end

class MyArray
  def initialize
    @ary = ['foo', 'bar', 'baz']
  end

  def inject(accum, &block)
    @ary.each do |str|
      accum = WeirdPlus.module_exec(str, accum, &block)
    end
    accum
  end
end

def add_all(str_ary)
  str_ary.inject('') do |str, accum|
    accum + str
  end
end