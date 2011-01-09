require "spec_helper"

describe MyGem::RolesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/my_gem/roles" }.should route_to(:controller => "my_gem/roles", :action => "index")
    end

    it "recognizes and generates #show" do
      { :get => "/my_gem/roles/Admin" }.should route_to(:controller => "my_gem/roles", :action => "show", :name => "Admin")
    end

    it "recognizes and generates #edit" do
      { :get => "/my_gem/roles/Admin/edit" }.should route_to(:controller => "my_gem/roles", :action => "edit", :name => "Admin")
    end

    it "recognizes and generates #update" do
      { :put => "/my_gem/roles/Admin" }.should route_to(:controller => "my_gem/roles", :action => "update", :name => "Admin")
    end

  end
end
