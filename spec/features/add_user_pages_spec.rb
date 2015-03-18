require 'rails_helper'

describe "the add a user process" do
  it "adds a new user" do
    visit new_user_path
    fill_in 'Email', :with => 'test@test.com'
    fill_in 'Password', :with => 'testword'
    fill_in 'Password confirmation', :with => 'testword'
    click_on 'Sign Up'
    expect(page).to have_content 'Welcome'
  end

  it "gives error when no email is entered" do
    visit new_user_path
    fill_in 'Email', :with => ''
    click_on 'Sign Up'
    expect(page).to have_content 'Please provide'
  end
end
