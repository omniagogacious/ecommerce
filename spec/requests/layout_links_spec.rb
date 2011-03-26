require 'spec_helper'

describe "LayoutLinks" do
  before(:each) do
    @base_title = "mOytoyz | "
  end
    
  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => @base_title + "Home")
  end
  
  it "should have a Contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => @base_title + "Contact")
  end

  it "should have an About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => @base_title + "About")
  end
  
  it "should have a signup page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "Sign in")
  end
  
end
