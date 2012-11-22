require "spec_helper"

describe StudentorgsController do
  describe "routing" do

    it "routes to #index" do
      get("/studentorgs").should route_to("studentorgs#index")
    end

    it "routes to #new" do
      get("/studentorgs/new").should route_to("studentorgs#new")
    end

    it "routes to #show" do
      get("/studentorgs/1").should route_to("studentorgs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/studentorgs/1/edit").should route_to("studentorgs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/studentorgs").should route_to("studentorgs#create")
    end

    it "routes to #update" do
      put("/studentorgs/1").should route_to("studentorgs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/studentorgs/1").should route_to("studentorgs#destroy", :id => "1")
    end

  end
end
