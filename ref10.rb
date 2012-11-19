class Foo
  def camelize_string(str)
    using Camelize
    str.camelize
  end
end

using RSpec
describe MyClass do
  using RSpec
  it "is awesome" do
    using RSpec
    MyClass.new.should be_awesome
  end
end