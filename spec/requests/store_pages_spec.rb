require 'spec_helper'

describe "StorePages" do
	subject { page }
	let(:user) { FactoryGirl.create(:user) }
	before { sign_in user }
	
	describe "store creation" do
		before { visit create_path }
		
		describe "with invalid information" do
		
			it "should not create a store" do
				expect { click_button "Create" }.not_to change(Store, :count)
			end
			
			describe "error messages" do
				before { click_button "Create" }
				it { should have_selector('div.alert.alert-error', text: 'Error') }
			end
		end
		
		describe "with valid information" do
			before { fill_in 'store_name', with: "Sample Store" }
			it "should create a store" do
				expect { click_button "Create" }.to change(Store, :count).by(1)
			end
		end
	end
	
	describe "store destruction" do
		before { FactoryGirl.create(:store, user: user) }
		
		describe "as corect user" do
			before { visit root_path }
			
			it "should delete a store" do
				expect { click_button "Delete" }.to change(Store, :count).by(-1)
			end
		end
	end
end
