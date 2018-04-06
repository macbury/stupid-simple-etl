module Validator
  ROW_INCOME = 3
  def self.call(enumerable)
    Enumerator.new do |yielder|
      enumerable.each do |row|
        if row[ROW_INCOME].empty?
          puts "Invalid: #{row}, rejecting"
        else
          puts "Valid #{row}"
          yielder << row
        end
      end
    end
  end
end
