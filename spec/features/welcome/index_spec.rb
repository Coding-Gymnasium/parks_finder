require 'rails_helper'
RSpec.describe "Welcome Index Page" do
  describe "As a visitor" do
    it "When I visit the root_path I see a form to find parks by state" do
      visit root_path
      
      expect(page).to have_button('Find Parks')
      select("Tennessee", from: 'state')
      expect(page).to have_select('state', selected: 'Tennessee')
      click_on 'Find Parks'
      expect(current_path).to eq(parks_path)
    end
  end
end