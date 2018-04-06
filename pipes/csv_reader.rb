require 'csv'
class CsvReader
  def initialize(path)
    @path = path
  end

  def call(_)
    Enumerator.new do |yielder|
      CSV.foreach(@path) { |row| yielder << row }
    end
  end
end
