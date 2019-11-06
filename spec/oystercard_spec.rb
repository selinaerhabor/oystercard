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
    it {is_expected.to respond_to(:top_up).with(1).argument}

    context 'when the maximum card balance limit would be exceeded' do
      max_balance_limit = Oystercard::MAX_BALANCE_LIMIT
      it "should raise an error: Invalid amount, maximum balance limit is #{max_balance_limit}" do
        subject.top_up(max_balance_limit)
        expect { subject.top_up(1) }.to raise_error("Invalid amount, maximum balance limit is #{max_balance_limit}")
      end
    end
  end
end
