class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @all_posts = current_user.posts
    @new_post = Post.new
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
    render json: params
  end

  def update
  end
end
