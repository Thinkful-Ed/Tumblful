class TextPostsController < ApplicationController

    before_action :authenticate_user!

        #GET
    def index
        @text_posts = TextPost.all
    end
        #GET
    def show
        @text_post = TextPost.find(params[:id])
    end
        #GET
    def new
        @text_post = TextPost.new
    end
        #GET
    def edit
        @text_post = TextPost.find(params[:id])
    end
        #POST
    def create
        @text_post = TextPost.new(content: params[:text_post][:content], title: params[:text_post][:title])
        if @text_post.save
            redirect_to text_posts_path, :notice => "Your Text Post has been created."
        else
            @errors = @text_post.errors
            render :new
        end
    end
        #PUT
    def update
        @text_post = TextPost.find(params[:id])
        if @text_post.update(content: params[:text_post][:content], title: params[:text_post][:title])
            redirect_to text_posts_path, :notice => "Your Text Post has been updated."
        else
            @errors = @text_post.errors
            render :edit
        end
    end
        #DELETE
    def destroy
        @text_post = TextPost.find(params[:id])
        @text_post.destroy
        redirect_to text_posts_path,  :notice => "Your Text Post has been deleted."
    end
end
