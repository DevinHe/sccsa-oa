require 'rails_helper'

RSpec.describe Apply, type: :model do
  let(:apply) { Factory :apply }

  it{ should respond_to(:user) }
  it{ should respond_to(:project) }
  it{ should respond_to(:category) }
  it{ should respond_to(:requirement) }
  it{ should respond_to(:site) }
  it{ should respond_to(:facilities) }
  it{ should respond_to(:address) }
  it{ should respond_to(:implement_time) }
  it{ should respond_to(:implement_date) }
  it{ should respond_to(:p_serial) }
end
