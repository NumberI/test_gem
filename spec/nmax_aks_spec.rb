require 'spec_helper'

RSpec.describe Nmax do
  let(:normal_f){ File.open("#{__dir__}/examples/normal.txt", "r") }
  let(:empty_f){ File.open("#{__dir__}/examples/empty.txt", "r") }
  let(:chars_f){ File.open("#{__dir__}/examples/chars.txt", "r") }

  it "without count" do
    expect(Nmax.hi(normal_f)).to eq("Не ввели количество чисел")
  end

  it "empty file" do
    expect(Nmax.hi(empty_f,10)).to eq("Нет текста")
  end
  
  it "file without numbers" do
    expect(Nmax.hi(chars_f,10)).to eq("Нет чисел")
  end

  it "checking count of numbers" do
    expect(Nmax.hi(normal_f,10)).to eq([1990, 1968, 1963, 1960, 1960, 1950])
  end
  
end