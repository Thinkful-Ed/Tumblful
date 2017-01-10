require 'spec_helper'

describe ArticleLinksController, type: :controller do
  describe '#index' do
    let(:article_links) { FactoryGirl.create_list :article_link, 25 }
    it 'assigns the Article Links to the article_links variable' do
      get :index
      expect(assigns[:article_links]).to eq(article_links)
    end
  end
end
