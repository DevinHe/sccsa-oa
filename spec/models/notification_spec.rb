require 'rails_helper'

RSpec.describe Notification, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  let(:notification) { Factory :notification }

  it{ should respond_to(:user) }
  it{ should respond_to(:content) }
  it{ should respond_to(:notificationable) }
  it{ should respond_to(:read) }
end
