require 'rails_helper'

RSpec.describe "DepartmentDocuments", type: :request do
  describe "GET /department_documents" do
    it "works! (now write some real specs)" do
      get department_documents_path
      expect(response).to have_http_status(200)
    end
  end
end
