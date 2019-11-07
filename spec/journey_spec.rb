require './lib/journey'

describe Journey do
  subject(:journey) {Journey.new}

  it {is_expected.to be_instance_of(Journey)}
  it {is_expected.to respond_to(:in_journey)}
  it {is_expected.to respond_to(:touch_in)}

  it 'touch in should return true' do
    expect(journey.touch_in).to be(true)
  end

  it {is_expected.to respond_to(:touch_out)}

  it 'touch out should return false' do
    expect(journey.touch_out).to be(false)
  end
end
