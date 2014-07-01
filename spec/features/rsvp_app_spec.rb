require "spec_helper"

feature "Homepage" do
  scenario "user visits the homepage" do
    visit "/"

    expect(page).to have_content("RSVP App")
    expect(page).to have_link("RSVP", :href => "/rsvps/new" )
  end

  scenario "user clicks the 'RSVP' link" do
    visit "/"
    click_link("RSVP")
  end

  scenario "user fills in RSVP form" do
    visit "/rsvps/new"
    fill_in "name", with: "Luke Example"
    fill_in "email", with: "lucasmccomb@example.com"
    fill_in "email", with: "lucasmccomb@example.com"
    select("2", :from => "number_of_guests")
    choose("Fish")
    click_button "RSVP"
    expect(page).to have_content("Thanks for RSVPing!")
  end
end

