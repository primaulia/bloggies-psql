class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    render html: "show all posts by #{current_user.id}"
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
  end

  def update
  end

  def foo
  end
end
