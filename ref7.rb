def add_all(str_ary)
  str_ary.inject('') do |str, accum|
    accum + str
  end
end