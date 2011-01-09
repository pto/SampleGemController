require 'spec_helper'

describe "MyGem::Roles" do
  describe "GET /my_gem/roles" do
    it "works! (now write some real specs)" do
      visit my_gem_roles_path
      response.status.should be(200)
    end
  end
end
