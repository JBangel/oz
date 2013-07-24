require 'spec_helper'

describe "StaticPages" do
  describe "Home" do
    it "includes an input box" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      expect(page).to have_field('yellowbrickroad')
    end
  end
end
