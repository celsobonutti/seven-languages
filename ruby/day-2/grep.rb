filename = ARGV[0]

raise "Filename not provided" unless filename

pattern = ARGV[1]

raise "Pattern not provided" unless pattern

File::open(filename) do |file|
  puts "Line | Content"
  file.each_with_index do |line, index|
    puts "#{index.to_s.rjust(4)} | #{line}" if line.include? pattern
  end
end
