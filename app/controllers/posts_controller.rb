class PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    render html: 'show all posts'
  end
end
