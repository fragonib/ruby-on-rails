require 'rails_helper'

describe 'Belt' do

  it 'Can be bound to a Kata' do
    kata = Kata.new(title: 'Kata title', description: 'Kata description')
    kata.save

    belt = Belt.new(
      name: 'Belt name',
      description: 'Belt desc',
      kata: kata
    )
    belt.save

    expect(belt.kata).to eq(kata)
    expect(kata.belts).to eq([belt])
  end

end
