require "rails_helper"

RSpec.describe DepartmentDocumentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/department_documents").to route_to("department_documents#index")
    end

    it "routes to #new" do
      expect(:get => "/department_documents/new").to route_to("department_documents#new")
    end

    it "routes to #show" do
      expect(:get => "/department_documents/1").to route_to("department_documents#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/department_documents/1/edit").to route_to("department_documents#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/department_documents").to route_to("department_documents#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/department_documents/1").to route_to("department_documents#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/department_documents/1").to route_to("department_documents#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/department_documents/1").to route_to("department_documents#destroy", :id => "1")
    end

  end
end
