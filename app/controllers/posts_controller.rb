class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @all_posts = current_user.posts
    # @new_post = Post.new #post isnt tagged to any user

    @new_post = current_user.posts.new
  end

  def show
    render html: 'show one post'
  end

  def new
    render html: 'show form to create new post'
  end

  def edit
    render html: 'show form to edit existing post'
  end

  def create
    # allowing mass assignment
    creating_post = params.require(:post).permit(:title, :content, :user_id)

    # creating_post = current_user.post.build
    # creating_post.title = params[:post][:title]

    Post.create(creating_post)

    redirect_to posts_path
  end

  def destroy
    # Post.destroy(params[:id])

    deleted_post = Post.find(params[:id])
    deleted_post.destroy

    redirect_to posts_path
  end
end
