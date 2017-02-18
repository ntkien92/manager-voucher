require 'rails_helper'

RSpec.describe "department_documents/new", type: :view do
  before(:each) do
    assign(:department_document, DepartmentDocument.new())
  end

  it "renders new department_document form" do
    render

    assert_select "form[action=?][method=?]", department_documents_path, "post" do
    end
  end
end
