require "spec_helper"

feature "Homepage" do
  scenario "user visits the homepage" do
    visit "/"

    expect(page).to have_content("RSVP App")
    expect(page).to have_link("RSVP", :href => "/rsvps/new" )
  end
end

