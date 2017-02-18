require 'rails_helper'

RSpec.describe "department_documents/edit", type: :view do
  before(:each) do
    @department_document = assign(:department_document, DepartmentDocument.create!())
  end

  it "renders the edit department_document form" do
    render

    assert_select "form[action=?][method=?]", department_document_path(@department_document), "post" do
    end
  end
end
