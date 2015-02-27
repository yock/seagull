class Seagull
  attr_accessor :path, :board
  def initialize(path)
    @board = []
    @path = path
    read_file
  end

  private

  def read_file
    IO.foreach path do |line|
      line.chomp!
      if line.start_with?('.') or line.start_with?('*')
        board << line.split(//).map { |life| life == '*' }
      end
    end
  end
end

