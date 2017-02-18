# == Schema Information
#
# Table name: documents
#
#  id            :integer          not null, primary key
#  title         :string
#  name          :string
#  content       :text
#  department_id :integer
#  deleted_at    :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Document < ApplicationRecord
  # == Constants ============================================================
  attr_accessor :department_ids
  # == Attributes ===========================================================

  # == Extensions ===========================================================
  acts_as_paranoid
  # == Relationships ========================================================
  has_many :department_documents, dependent: :destroy
  belongs_to :department
  # == Validations ==========================================================

  # == Scopes ===============================================================

  # == Callbacks ============================================================

  # == Class Methods ========================================================

  # == Instance Methods =====================================================
end
