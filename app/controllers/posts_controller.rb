class PostsController < InheritedResources::Base

    before_action :authenticate_admin_user!

  def index
    @posts = Post.all
  end

  def new
    @post =current_admin_user.posts.build
  end

  def create
    @post = current_admin_user.posts.build(post_params)
    @post.save
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(post_params)
  end

  def delete
    @post = Post.find(params[:id])
    @post.destroy
  end

  private

    def post_params
      params.require(:post).permit(:title, :content)
    end

end
