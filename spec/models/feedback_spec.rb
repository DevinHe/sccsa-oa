require 'rails_helper'

RSpec.describe Feedback, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  let(:feedback) { Factory :feedback }

  it { should respond_to(:user) }
  it { should respond_to(:apply) }
  it { should respond_to(:content) }
  it { should respond_to(:coach) }
  it { should respond_to(:suggestion) }
  it { should respond_to(:population) }
  it { should respond_to(:distribute_advice) }
  it { should respond_to(:attachment) }

  it { should respond_to(:notifications) }

end
