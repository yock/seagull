require './lib/seagull'

describe Seagull do
  subject { Seagull.new 'spec/fixtures/constructor.txt' }

  it 'reads the file into a two-dimensional array' do
    expect(subject.board).to eq([[false,false],[false,true]])
  end

  context 'when a cell has too few neighbors' do
    let(:cell) { subject.board[1][1] }
    it 'dies' do
      expect { subject.evolve! }.to change { cell }.from(true).to(false)
    end
  end
end

