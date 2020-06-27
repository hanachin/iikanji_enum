class PublishedPostsController < ApplicationController
  before_action :set_published_post, only: [:show, :edit, :update, :destroy]

  # GET /published_posts
  # GET /published_posts.json
  def index
    @published_posts = PublishedPost.all
  end

  # GET /published_posts/1
  # GET /published_posts/1.json
  def show
  end

  # GET /published_posts/new
  def new
    @published_post = PublishedPost.new
  end

  # GET /published_posts/1/edit
  def edit
  end

  # POST /published_posts
  # POST /published_posts.json
  def create
    @published_post = PublishedPost.new(published_post_params)

    respond_to do |format|
      if @published_post.save
        format.html { redirect_to @published_post, notice: 'Published post was successfully created.' }
        format.json { render :show, status: :created, location: @published_post }
      else
        format.html { render :new }
        format.json { render json: @published_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /published_posts/1
  # PATCH/PUT /published_posts/1.json
  def update
    respond_to do |format|
      if @published_post.update(published_post_params)
        format.html { redirect_to @published_post, notice: 'Published post was successfully updated.' }
        format.json { render :show, status: :ok, location: @published_post }
      else
        format.html { render :edit }
        format.json { render json: @published_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /published_posts/1
  # DELETE /published_posts/1.json
  def destroy
    @published_post.destroy
    respond_to do |format|
      format.html { redirect_to published_posts_url, notice: 'Published post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_published_post
      @published_post = PublishedPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def published_post_params
      params.require(:published_post).permit(:type, :state, :title, :body)
    end
end
