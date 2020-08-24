require 'rails_helper'

RSpec.describe Todo, type: :model do
  ## pending "add some examples to (or delete) #{__FILE__}"

  # ASSOCIATION TESTS
  # ensure Todo model has a 1:m relationship with the Item model
  it { should have_many(:items).dependent(:destroy) }

  # VALIDATION TESTS
  # # ensure columns title and created by are present before saving.
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:created_by) }
end
