require 'rails_helper'

RSpec.describe Resource, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  let(:resource) { Factory :resource }

  it{ should respond_to(:title) }
  it{ should respond_to(:attachment) }
end
