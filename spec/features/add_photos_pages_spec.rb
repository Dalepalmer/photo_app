require 'rails_helper'

describe "the add a photo process" do
  it "adds a new photo" do
    user = User.create(:email => 'test@test.com', :password => 'testword', :password_confirmation => 'testword')
    visit new_user_photo_path(user)
    photo = Photo.create(:image => ../public/test.png)
    expect(page).to have_content 'Photo added!'
  end
end
