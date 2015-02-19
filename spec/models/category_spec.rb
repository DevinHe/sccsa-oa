require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:category) { Factory :category }

  it { should respond_to :name }
end
