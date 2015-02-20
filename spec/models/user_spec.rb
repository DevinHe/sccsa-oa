require 'rails_helper'

RSpec.describe User, type: :model do
  before { @user = User.new(name: "sccsa", unit: "shanghai" ) }

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:unit) }
end
