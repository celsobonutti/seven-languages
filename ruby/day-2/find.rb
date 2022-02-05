file = File::new("test_file")

puts "Without codeblock: #{file.read}"

File::open("test_file") { |file| puts "With codeblock: #{file.read}" }

# You can translate hashes and arrays if your array is composed of
# key-value pairs (which can itself be described by arrays of two elements)
# This is implemented in the `Hash.to_a` and `Array.to_h` methods.


# Yes, you can iterate through hashes. In multiple ways, actually.
# There are methods for `each`, `each_pair`, `each_value`, `each_key`, etc.
