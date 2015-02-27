require './lib/seagull'

describe Seagull do
  subject { Seagull.new 'spec/fixtures/constructor.txt' }

  it 'reads the file into a two-dimensional array' do
    expect(subject.board).to eq([[false,false],[false,true]])
  end
end

