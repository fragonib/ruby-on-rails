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

  it 'can be created' do

    kata_title = 'my kata title'
    kata_description = 'my kata description'

    visit root_path
    click_on('New Kata')
    fill_in(:title, with: kata_title)
    fill_in(:description, with: kata_description)
    click_on('Save')

    expect(page).to have_content(kata_title)
    expect(page).to have_content(kata_description)

  end

  it 'can be edited' do

    target_kata = create_kata(title: 'old kata title', description: 'old kata description')
    new_kata_title = 'new kata title'
    new_kata_description = 'new kata description'

    visit root_path
    click_on('Edit')
    fill_in(:kata_title, with: new_kata_title)
    fill_in(:kata_description, with: new_kata_description)
    click_on('Save')

    expect(page).to have_content(new_kata_title)
    expect(page).to have_content(new_kata_description)

  end

  def create_kata(title: 'Kata title', description: 'Kata description')
    kata = Kata.new(title: title, description: description)
    kata.save
    kata
  end

end
