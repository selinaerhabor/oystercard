require 'oystercard'

describe Oystercard do
  it {is_expected.to be_instance_of(described_class)}

  describe '#balance' do
    it {is_expected.to respond_to(:balance)}

    it 'returns balance of zero' do
      expect(subject.balance).to eq 0
    end
  end

  describe '#top_up' do
    it { is_expected.to respond_to(:top_up).with(1).argument }

    it 'should increase card balance by 100' do
      expect { subject.top_up(100) }.to change{ subject.balance }.by 1
    end
  end
end
