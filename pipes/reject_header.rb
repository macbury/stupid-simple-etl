module RejectHeader
  def self.call(enumerable)
    Enumerator.new do |yielder|
      enumerable.each_with_index do |row, index|
        if index.zero?
          puts "Ignoring #{row}"
        else
          yielder << row
        end
      end
    end
  end
end
