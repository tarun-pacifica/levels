class PostsController < ApplicationController

   def index
    
    @key = 'Do1mHRSlF1wBiwFq7WuxApvRIRQJFfN5ywZxgm1LqitSHQPyRs'
     @secret = 'Do1mHRSlF1wBiwFq7WuxApvRIRQJFfN5ywZxgm1LqitSHQPyRs'
     @oauth_token = 'Do1mHRSlF1wBiwFq7WuxApvRIRQJFfN5ywZxgm1LqitSHQPyRs'
     @oauth_token_secret = 'Do1mHRSlF1wBiwFq7WuxApvRIRQJFfN5ywZxgm1LqitSHQPyRs'

     @myClient = Tumblr::Client.new({
     :consumer_key => @key,
     :consumer_secret => @secret,
     :oauth_token => @oauth_token,
     :oauth_token_secret => @oauth_token_secret
     })

      @tumblr_post = @myClient.posts('davidmes.tumblr.com', :limit => 6)
      @tumblr_post['posts'].each do |post|
        existing_post = Post.find_by(:tumblr_id => post['id'].to_s)
        if existing_post.nil?
          local_post = Post.create(:name => post['blog_name'], :title => post['slug'], :tumblr_id => post['id'], :body => post['caption'])
          User.first.posts << local_post # Fix this.
        end
      end
      @posts = Post.all
   end 

   def create
    post = Post.create post_params
    redirect_to post
   end

  def new
    @user = @current_user
    @post = Post.new
  end

  def edit
    @post = Post.find params[:id]
  end

  def show
    @post = Post.find params[:id]
  end
  
  def update
    post = Post.find params[:id]
    post.update post_params
    redirect_to post
  end
  
  def destroy
    post = Post.find params[:id]
    post.destroy
    redirect_to posts_path
  end

  def author
    @posts = Post.where(:user_id => params[:id])
    render :index
  end

  private
  def post_params
    params.require(:post).permit(:name, :title, :body, :image, :user_id)
  end
end