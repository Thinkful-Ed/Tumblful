require 'spec_helper'

describe User do
  context "associations" do
    it { is_expected.to have_many :follows }
    it { is_expected.to have_many :tweets }
  end

  context "factories" do
    describe "#user" do
      subject { FactoryGirl.build(:user) }

      it { is_expected.to be_valid }
    end
  end

  context "validations" do
    it { is_expected.to validate_presence_of :email }
    it { is_expected.to validate_uniqueness_of(:email).ignoring_case_sensitivity }
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :password }
    it { is_expected.to validate_confirmation_of :password }
    it { is_expected.to validate_presence_of :username }
    it { is_expected.to validate_uniqueness_of :username }
  end

  describe ".all_except" do
    let!(:user) { FactoryGirl.create(:user) }
    let(:t1) { instance_double(Tweet) }
    let(:t2) { instance_double(Tweet) }
    let(:t3) { instance_double(Tweet) }

    before do
      users = 10.times.map { FactoryGirl.create(:user) }
      users.sort_by!{|x| x.name}
      @ids = users.map(&:id)
    end

    it "should contain all users except the on passed, ordered by name" do
      expect(User.all_except(user).load.map(&:id)).to eq @ids
    end
  end

  describe "#all_tweets" do
    let!(:user) { instance_double("User") }
    let(:t1) { instance_double(Tweet) }
    let(:t2) { instance_double(Tweet) }
    let(:t3) { instance_double(Tweet) }

    before do
      allow(t1).to receive(:user).and_return([user])
      allow(user).to receive(:follows).and_return([t2])
      allow(user).to receive(:all_tweets).and_return([t1, t2])
    end

    it "should return all my tweets and followed tweets, ordered by creation time" do
      expect(user).to receive(:all_tweets).and_return([t1, t2])
      expect(user.all_tweets).to eq([t1, t2])
    end
  end
end
