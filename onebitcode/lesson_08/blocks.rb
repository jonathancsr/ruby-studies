5.times {puts 'Exec the block'}

sum = 0
numbers = [5, 10, 5]
numbers.each {|number| sum += number}
puts sum

foo = { 2 => 3, 4 => 5}
foo.each do |key, value|
  puts "key: #{key}"
  puts "value: #{value}"
  puts "key * value = #{key * value}"
  puts "- - -"
end

def foo
  if block_given?
    yield
  else
    puts "Sem parametro do tipo bloco"
  end
end

foo
foo { puts "foo" }

def foo(name, &block)
  @name = name
  block.call
end

foo('Jonathan') {puts "Helow #{@name}"}
