class TextPostsController < ApplicationController
        #GET
    def index
        @text_posts = TextPosts.all
    end
        #GET
    def show
        @text_post = TextPosts.find(params[:id])
    end
        #GET
    def new
        @text_post = TextPosts.new
    end
        #GET
    def edit
        @text_post = TextPosts.find(params[:id])
    end
        #POST
    def create
        @text_post = TextPosts.new(content: params[:text_posts][:content], title: params[:text_posts][:title])
        if @text_post.save
            redirect_to text_posts_path
        else
            @errors = @text_post.errors
            render :new
        end
    end
        #PUT
    def update
        @text_post = TextPosts.find(params[:id])
        if @text_post.update(content: params[:text_posts][:content], title: params[:text_posts][:title])
            redirect_to text_posts_path
        else
            @errors = @text_post.errors
            render :edit
        end
    end
        #DELETE
    def delete
        @text_post = TextPosts.find(params[:id])
        @text_post.destroy
        redirect_to text_postss_path
    end
end
