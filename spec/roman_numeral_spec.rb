require_relative '../lib/roman_numeral.rb'

describe RomanNumeral do
  let(:subject) { described_class.new }

  describe '#calculate' do
    it 'changes 5 to V' do
      expect(subject.calculate(5)).to eq 'V'
    end

    it 'changes 3 to III' do
      expect(subject.calculate(3)).to eq 'III'
    end

    it 'changes 6 to VI' do
      expect(subject.calculate(6)).to eq 'VI'
    end
    it 'changes 8 to VIII' do
      expect(subject.calculate(8)).to eq 'VIII'
    end

    it 'changes 52 to LII' do
      expect(subject.calculate(52)).to eq 'LII'
    end

    it 'changes 4 to IV' do
      expect(subject.calculate(4)).to eq 'IV'
    end
  end
end
