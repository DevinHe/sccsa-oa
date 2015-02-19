require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the AppliesHelper. For example:
#
# describe AppliesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ApplicationHelper, type: :helper do
  describe "format date" do
    it "to '%Y年%m月%d日'" do
      expect(helper.my_date(Time.now)).to eq(Time.now.strftime('%Y年%m月%d日'))
    end

    it "to '%Y/%m/%d'" do
      expect(helper.my_index_date(Time.now)).to eq(Time.now.strftime('%Y/%m/%d'))
    end

    it "to '%Y年%m月%d日 %H:%M'" do
      expect(helper.my_time(Time.now)).to eq(Time.now.strftime('%Y年%m月%d日 %H:%M'))
    end
  end

  describe "authorize user's role" do
    it "should be have a cadmin? method" do
      expect(helper).to respond_to(:cadmin?)
    end
    it "should be have a cdistributor? method" do
      expect(helper).to respond_to(:cdistributor?)
    end
  end

  describe "respond_to other methods" do
    it "flash_class" do
      expect(helper).to  respond_to(:flash_class)
    end
    it "verify_status" do
      expect(helper).to  respond_to(:verify_status)
    end
    it "distribute_status" do
      expect(helper).to  respond_to(:distribute_status)
    end
    it "apply_index_operators" do
      expect(helper).to  respond_to(:apply_index_operators)
    end
    it "show_feedback_status" do
      expect(helper).to  respond_to(:show_feedback_status)
    end
  end
end
