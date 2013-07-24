require 'spec_helper'

describe "StaticPages" do
  let(:basetitle) { 'Oz | ' }

  describe "Home" do
    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("#{basetitle}Home")
    end

    it "includes an input box" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      expect(page).to have_field('yellowbrickroad')
    end
  end

  describe "About" do
    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("#{basetitle}About")
    end

    it "incluces Oz" do
      visit '/static_pages/about'
      expect(page).to have_content('Oz')
    end
  end
end
