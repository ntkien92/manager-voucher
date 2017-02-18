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

class DepartmentDocument < ApplicationRecord
  # == Constants ============================================================
  INPROGRES = 'inprogres'
  APPROVAL = 'approval'
  # == Attributes ===========================================================
  enum status: %w(inprogres approval)
  # == Extensions ===========================================================

  # == Relationships ========================================================
  belongs_to :department
  belongs_to :document
  # == Validations ==========================================================

  # == Scopes ===============================================================

  # == Callbacks ============================================================

  # == Class Methods ========================================================

  # == Instance Methods =====================================================
end
