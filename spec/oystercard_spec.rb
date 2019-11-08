require 'oystercard'

describe Oystercard do
  it {is_expected.to be_instance_of(described_class)}

  describe '#balance' do
    it {is_expected.to respond_to(:balance)}

    it 'returns balance of zero' do
      expect(subject.balance).to eq 0
    end

    it {is_expected.to respond_to(:top_up).with(1).argument}

    it 'should update balance with 1' do
      expect{subject.top_up 1}.to change{subject.balance}.by 1
    end

    # it 'should update when money is withdrawn' do
    #   subject.top_up(20)
    #   subject.deduct(1)
    #   expect(subject.balance).to eq(19)
    # end

    it { is_expected.to respond_to(:touch_in) }

    it { is_expected.to respond_to(:touch_out) }

    # it 'touch_in should return true' do
    #   expect(subject.touch_in).to be(true)
    # end

    it 'touch out should return false' do
        expect(subject.touch_out).to be(false)
    end

    # it 'touch_in should change in_journey value to true' do
    #   subject.touch_in
    #   expect(subject.in_journey).to eq(true)
    # end

    it 'touch_out should change in_journey value to false' do
      subject.touch_out
      expect(subject.in_journey).to eq(false)
    end

    it 'should update the balance with journeys' do
      expect{subject.touch_out}.to change{subject.balance}.by -1
    end

    context 'when the maximum card balance limit would be exceeded' do
      max_balance_limit = Oystercard::MAX_BALANCE_LIMIT
      it "should raise an error: Invalid amount, maximum balance limit is #{max_balance_limit}" do
        subject.top_up(max_balance_limit)
        expect { subject.top_up(1) }.to raise_error("Invalid amount, maximum balance limit is #{max_balance_limit}")
      end
    end

    context 'when the minimum card balance limit has been reached' do
      min_balance = Oystercard::MIN_BALANCE
      it "should raise an error, limit reached" do
        subject.balance < min_balance
        expect { subject.touch_in }.to raise_error("Less than £1")
      end
    end

  end
end
