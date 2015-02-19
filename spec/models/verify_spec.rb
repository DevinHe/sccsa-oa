require 'rails_helper'

RSpec.describe Verify, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  let(:verify) { Factory :verify }

  it { should respond_to(:is_pass) }
  it { should respond_to(:apply) }
  it { should respond_to(:content) }
  it { should respond_to(:user) }
end
