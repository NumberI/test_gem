class Nmax
  # attr_accessor :count

  def self.hi(input = [], argv = 0)
    p @count = argv.to_i
    return p "Не ввели количество чисел" if @count == 0
    p text = input.read.split
    return p "Нет текста" if text.empty?
    to_numbers text
  end

  private
  def to_numbers(text)
    numeric = text.map{ |x| p x.to_i}
  

  end
end