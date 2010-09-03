require 'spec_helper'

describe "LayoutLinks" do
  it "should have Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "RoR Tutor Sample App | Home")
  end

  it "should have Contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "RoR Tutor Sample App | Contact")
  end

  it "should have About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "RoR Tutor Sample App | About")
  end

  it "should have Help page at '/help'" do
    get '/help'
    response.should have_selector('title', :content => "RoR Tutor Sample App | Help")
  end
  
  it "should have a signup page at '/signup'" do
    get '/signup' 
    response.should have_selector('title', :content => "RoR Tutor Sample App | Sign up")
  end
end
