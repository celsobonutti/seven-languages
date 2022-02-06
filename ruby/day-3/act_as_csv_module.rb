class CsvRow
  attr_accessor :hash

  def method_missing name, *args
    name_str = name.to_s

    if @hash.include? name_str
      @hash[name.to_s]
    else
      super
    end
  end

  def initialize(headers, content)
    @hash = headers.zip(content).to_h
  end

  def values
    @hash.values
  end
end

module ActAsCsv
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end

  module InstanceMethods
    def read
      filename = "#{self.class.to_s.downcase}.txt"
      file = File.new(filename)
      @headers = file.gets.chomp.split(', ')

      @csv_contents = file.map { |row| CsvRow.new(@headers, row.chomp.split(', ')) }
    end

    attr_accessor :headers, :csv_contents

    def initialize
      read
    end

    def each(&block)
      @csv_contents.each(&block)
    end
  end
end

class RubyCsv
  include ActAsCsv
  acts_as_csv
end

csv = RubyCsv.new
csv.each { |row| puts row.one }
