class Pipeline
  def initialize(pipes = [])
    @pipes = pipes
  end

  def self.pipe(callable)
    Pipeline.new([callable])
  end

  def call(enumerable = [])
    @pipes.reduce(enumerable) do |pipe, memo|
      memo.call(pipe)
    end
  end

  def pipe(other)
    Pipeline.new(@pipes + [other])
  end
end
