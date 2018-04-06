class Inserter

  def initialize(output_path)
    @output_path = output_path
  end

  def call(enumerable)
    File.open(@output_path, 'w') do |f|
      enumerable.each do |row|
        puts "Writing: #{row}"
        f.write row.join(', ') + "\n"
      end
    end
  end
end
