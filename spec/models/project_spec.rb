require 'rails_helper'

RSpec.describe Project, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  let(:project) { Factory :project }

  it{ should respond_to(:name) }
  it{ should respond_to(:serial) }

  it{ should respond_to(:category) }
end
