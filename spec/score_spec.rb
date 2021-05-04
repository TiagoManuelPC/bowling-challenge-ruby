require 'score'

describe Score do
  let(:score) {described_class.new}
  describe '#result' do
    context 'after rolling a ball' do
      it 'can roll a gutter game' do
        20.times {score.roll(0)}
        expect(score.result).to eq 0
      end

      it 'can roll all singles' do
        20.times { score.roll(1) }
        expect(score.result).to eq 20
      end
    end

    context 'rolling a spare' do
      it 'adds a bonus score' do
        score.roll(5)
        score.roll(5)
        score.roll(3)
        17.times { score.roll(0) }
        expect(score.result).to eq 16
      end
    end
  end

  describe  '#rolls' do
    it 'records a history of rolls' do
      score.roll 3
      score.roll 4
      expect(score.rolls).to eq [3,4]
    end
  end

end