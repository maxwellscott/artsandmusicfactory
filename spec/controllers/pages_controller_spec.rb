require 'spec_helper'

describe PagesController do

  describe "GET 'musicians'" do
    it "should be successful" do
      get 'musicians'
      response.should be_success
    end
  end

end
