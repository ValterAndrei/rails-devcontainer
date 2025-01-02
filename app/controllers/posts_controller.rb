class PostsController < ApplicationController
  before_action :set_post, only: %i[show update destroy]

  # GET /posts
  def index
    posts = current_user.posts

    render json: posts, status: :ok
  end

  # GET /posts/:id
  def show
    render json: @post, status: :ok
  end

  # POST /posts
  def create
    post = current_user.posts.build(post_params)

    if post.save
      render json: post, status: :created, location: post
    else
      render json: { errors: post.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/:id
  def update
    if @post.update(post_params)
      render json: @post, status: :ok
    else
      render json: { errors: @post.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # DELETE /posts/:id
  def destroy
    @post.destroy!

    render json: { message: "Post was successfully destroyed." }, status: :ok
  rescue ActiveRecord::RecordNotDestroyed => e
    render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
  end


  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
