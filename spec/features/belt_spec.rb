require 'rails_helper'

describe 'Belt' do

  before(:each) do
    @kata = Kata.new(title: 'Kata title', description: 'Kata description')
    @kata.save
    @belt = Belt.new(name: 'Belt name', description: 'Belt desc', kata: @kata)
    @belt.save
  end

  it 'can be bound to a Kata' do
    expect(@belt.kata).to eq(@kata)
    expect(@kata.belts).to eq([@belt])
  end

  it 'relation with kata can be navigated' do
    retrived_kata_id = Belt.find_kata_id(@belt)
    expect(retrived_kata_id).to eq(@kata.id)
  end

  it 'has a full name' do
    full_name = @belt.full_name()
    expect(full_name).to eq("#{@belt.name} - #{@belt.description}")
  end

end
