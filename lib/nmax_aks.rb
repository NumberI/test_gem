module Nmax
  def self.hi(input = [], argv = 0)
    @count = argv.to_i
    return p "Не ввели количество чисел" if @count == 0
    text = input.read.split
    return p "Нет текста" if text.empty?
    result = to_numbers text
    result.empty? ? (return p "Нет чисел") : (return p result)
  end

  private
  def self.to_numbers(text)
    text.map{ |x| x.to_i }.reject{ |y| y == 0 }.sort.reverse[ 0..@count - 1 ]
  end
end