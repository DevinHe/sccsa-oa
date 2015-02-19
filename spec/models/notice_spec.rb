require 'rails_helper'

RSpec.describe Notice, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  let(:notice) { Factory :notice }

  it{ should respond_to(:title) }
  it{ should respond_to(:content) }
  it{ should respond_to(:notifications) }
end
