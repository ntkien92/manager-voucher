require 'rails_helper'

RSpec.describe "department_documents/index", type: :view do
  before(:each) do
    assign(:department_documents, [
      DepartmentDocument.create!(),
      DepartmentDocument.create!()
    ])
  end

  it "renders a list of department_documents" do
    render
  end
end
