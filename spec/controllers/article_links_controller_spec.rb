require 'spec_helper'

describe ArticleLinksController do
context "when no user is logged in" do
    describe "GET index" do
      subject { response }
      before { get :index }

      it { should_not be_successful }
    end
    describe "POST create" do
      subject { response }
      before { post :create, :follow => { :following_id => 1 } }

      it { should_not be_successful }
    end
        describe "DELETE destroy" do
      let(:follow) { FactoryGirl.create(:follow) }
      subject { response }

      before { delete :destroy, :id => follow.id }

      it{ should_not be_successful }
    end
  end
end
