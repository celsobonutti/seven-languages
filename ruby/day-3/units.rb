class Numeric
  def inches
    self
  end

  def feet
    self * 12.inches
  end

  def yards
    self * 3.feet
  end

  def miles
    self * 5280.feet
  end

  def back
    self * -1
  end

  def forward
    self
  end
end

class Roman
  def self.method_missing name, *args
    roman = name.to_s
    roman.gsub!('IV', 'IIII')
    roman.gsub!('IX', 'VIIII')
    roman.gsub!('XL', 'XXXX')
    roman.gsub!('XC', 'LXXXX')

    (roman.count('I') +
     roman.count('V') * 5 +
     roman.count('X') * 10 +
     roman.count('L') * 50 +
     roman.count('C') * 100)
  end
end
