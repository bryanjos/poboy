require 'spec_helper'
require './lib/parser'
 
describe 'Parser' do
  it 'must parse integers' do
    expect(Parser.parse('1')).to eq [:body, [[:int, 1]]]
    expect(Parser.parse('360')).to eq [:body, [[:int, 360]]]
    expect(Parser.parse('-1')).to eq [:body, [[:int, -1]]]
  end

  it 'must parse floats' do
    expect(Parser.parse('1.0')).to eq [:body, [[:float, 1.0]]]
    expect(Parser.parse('360.03')).to eq [:body, [[:float, 360.03]]]
    expect(Parser.parse('-1.0983')).to eq [:body, [[:float, -1.0983]]]
  end

  it 'must parse string' do
    expect(Parser.parse('"hello"')).to eq [:body, [[:string, "hello"]]]
    expect(Parser.parse('"world"')).to eq [:body, [[:string, "world"]]]
  end

  it 'must parse simple assignments' do
    expect(Parser.parse('a = "hello"')).to eq [:body, [[:assignment, [[:identifier, :a], [:string, "hello"]]]]]
    expect(Parser.parse('b = 1')).to eq [:body, [[:assignment, [[:identifier, :b], [:int, 1]]]]]
  end
end