require 'rails_helper'
require 'capybara'

describe 'Kata' do

  it 'all are shown when selected' do
    first_kata_title = 'first kata title'
    first_kata_description = 'first kata description'
    second_kata_title = 'second kata title'
    second_kata_description = 'second kata description'

    first_kata = create_kata(title: first_kata_title, description: first_kata_description)
    second_kata = create_kata(title: second_kata_title, description: second_kata_description)

    visit root_path
    click_on(first_kata_title)

    expect(page).to have_content(first_kata_title)
    expect(page).to have_content(first_kata_description)

    visit root_path
    click_on(second_kata_title)

    expect(page).to have_content(second_kata_title)
    expect(page).to have_content(second_kata_description)
  end

  def create_kata(title: 'Kata title', description: 'Kata description')
    kata = Kata.new(title: title, description: description)
    kata.save
    kata
  end

end
