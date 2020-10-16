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
        
      end
    end
  end
end