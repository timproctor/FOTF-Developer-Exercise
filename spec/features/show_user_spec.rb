require 'rails_helper'

describe "Viewing a user's profile page" do

  it "shows the user's details" do
    user = User.create!(user_attributes)

    sign_in(user)

    visit user_url(user)

    expect(page).to have_text(user.email)
    expect(page).to have_text(user.username)
  end

  it "shows the user as a member since" do
    user = User.create!(user_attributes)

    sign_in(user)

    visit user_url(user)
    time_now_month_year = Time.now.strftime("%B, %Y")

    expect(page).to have_text(time_now_month_year)
  end


end
