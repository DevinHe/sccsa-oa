require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { Factory :user }

  it { should respond_to(:name) }
  it { should respond_to(:unit) }
  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:is_admin) }
  it { should respond_to(:role) }
end
