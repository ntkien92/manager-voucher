require 'rails_helper'

RSpec.describe "department_documents/show", type: :view do
  before(:each) do
    @department_document = assign(:department_document, DepartmentDocument.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
