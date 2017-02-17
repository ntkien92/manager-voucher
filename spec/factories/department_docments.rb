# == Schema Information
#
# Table name: department_docments
#
#  id            :integer          not null, primary key
#  status        :integer          default("0")
#  name          :string
#  document_id   :integer
#  department_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

FactoryGirl.define do
  factory :department_docment do
    
  end
end
