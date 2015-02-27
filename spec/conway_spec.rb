require './lib/seagull'

describe Seagull do
  subject { Seagull.new 'spec/fixtures/constructor.txt' }
  it 'converts a text file to an array' do
    expect(subject.board).to be_an(Array)
  end
end

