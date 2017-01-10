require 'spec_helper'

describe Follow do
  context "associations" do
    it { is_expected.to belong_to :user }
    it { is_expected.to belong_to :following }
  end

  context "factories" do
    describe "#follow" do
      subject { FactoryGirl.build(:follow) }

      it { is_expected.to be_valid }
    end
  end

  context "validations" do
    it { is_expected.to validate_presence_of :following }
    it { is_expected.to validate_presence_of :user }
  end
end
