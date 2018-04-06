module Translator
  ROW_INCOME = 3
  ROW_AGE = 2
  def self.call(enumerable)
    Enumerator.new do |yielder|
      enumerable.each do |row|
        puts "Translating #{row}"
        income = (row[ROW_INCOME].to_i / 1000).to_s + " EUR"
        finalRow = row[0..1] + [row[ROW_AGE].to_i, income]
        yielder << finalRow
      end
    end
  end
end
