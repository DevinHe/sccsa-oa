require 'rails_helper'

RSpec.describe Role, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  let(:role) { Factory :role1 }

  it{ should respond_to(:name) }
  it{ should respond_to(:user) }
end
