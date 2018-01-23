require 'rails_helper'

describe 'Kata' do
  describe 'Create' do
    it 'title is required' do
      kata = build_kata(title: nil, description: 'any')

      kata.save

      expect(kata.errors.size).to eq(1)
    end
    it 'description is required' do
      kata = build_kata(title: 'any', description: nil)

      kata.save

      expect(kata.errors.size).to eq(1)
    end
  end

  def build_kata(title: 'Kata title', description: 'Kata description')
    kata = Kata.new(title: title, description: description)
    kata
  end
end
