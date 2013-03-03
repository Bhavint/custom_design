require 'spec_helper'

describe "Static Pages" do
	subject{page}
	
  describe "Help page" do
 	before {visit help_path}
 	
    it { should have_selector('h1', text: 'Help') }
    it { should have_selector('title', :text => '|Help') }
  end
  
  describe "Home Page" do
  before {visit root_path}
  
    it { should have_selector('h1', :text => 'Welcome to the FACO^') }
    it { should_not have_selector('title', :text => '|Home') }    
    it { should have_selector('title', :text => "Custom Design")}
  end
  
  describe "About page" do
  	before {visit about_path}
  	
  	it { should have_selector('h1',:text => 'About') }
   	it { should have_selector('title', :text => '|About') }
  end
  
  describe "Contact page" do
  before {visit contactus_path}
  
    it { should have_selector('h1',:text => 'Contact Us') }
    it { should have_selector('title', :text => "|Contact Us") }
  end 
end
