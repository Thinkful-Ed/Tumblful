require 'spec_helper'

describe Tweet do
  context "associations", type: :model do
    it { should belong_to(:user) }
  end

  context "factories" do
    describe "#tweet" do
      subject { FactoryGirl.build(:tweet) }

      it { should be_valid }
    end
  end

  context "validations", type: :model do
    it { should validate_presence_of :content }
    it "should not be valid when the length is between 2 and 140 characters" do
      t1 = Tweet.new(content: '1')
      t2 = Tweet.new(content: ':)')
      t3 = Tweet.new(content: 'fdsjklsjfksdk fd kslfsdjkd')
      t4 = Tweet.new(content: '*'*140)
      t5 = Tweet.new(content: '#'*141)

      [t1, t5].each do |t|
        t.valid?
        expect(t.errors[:content]).to be_present
      end

      [t2, t3, t4].each do |t|
        t.valid?
        expect(t.errors[:content]).to_not be_present
      end
    end

    it { should validate_presence_of :user }
  end

  describe ".by_user_ids", type: :model do
    let!(:t1) { FactoryGirl.create(:tweet) }
    let!(:t2) { FactoryGirl.create(:tweet) }
    let!(:t3) { FactoryGirl.create(:tweet) }

    it "should search by user ids" do
      expect(Tweet.by_user_ids(t1.user.id, t3.user.id).load.map(&:user_id)).to eql [t3.user.id, t1.user.id]
    end
  end
end
