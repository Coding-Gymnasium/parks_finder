require 'rails_helper'
RSpec.describe "Parks Index Page" do
  describe "As a Visitor" do
    describe "After clicking 'Find Parks' in the home page I am redirected to the parks index where I see the parks matching they state I queried and their individual information" do
      before :each do
        visit root_path
        select("Tennessee", from: 'state')
        click_on 'Find Parks'
      end
      it "I see a list of parks matching my state choice" do
        within(first('.park')) do
          expect(page).to have_content('Abraham Lincoln Birthplace National Historical Park')
          expect(page).to have_content('For over a century people from around the world have come to rural Central Kentucky')
          expect(page).to have_content('The Birthplace Unit of the park is located approximately 2 miles south of the town of Hodgenville on U.S.')
          expect(page).to have_content('Wednesday: 9:00AM - 5:00PM')
        end
      end
    end
  end
end