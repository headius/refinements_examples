class Bar < Foo
  def camelize_and_join(str_ary)
    str_ary.map {|str| str.camelize}.join(',')
  end
end