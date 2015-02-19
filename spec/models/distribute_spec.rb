require 'rails_helper'

RSpec.describe Distribute, type: :model do
  let(:distribute) { Factory :distribute }

  it{ should respond_to(:is_distribute) }
  it{ should respond_to(:user) }
  it{ should respond_to(:apply) } 
end
