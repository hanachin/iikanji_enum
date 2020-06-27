class DraftPostsController < ApplicationController
  before_action :set_draft_post, only: [:show, :edit, :update, :destroy]

  # GET /draft_posts
  # GET /draft_posts.json
  def index
    @draft_posts = DraftPost.all
  end

  # GET /draft_posts/1
  # GET /draft_posts/1.json
  def show
  end

  # GET /draft_posts/new
  def new
    @draft_post = DraftPost.new
  end

  # GET /draft_posts/1/edit
  def edit
  end

  # POST /draft_posts
  # POST /draft_posts.json
  def create
    @draft_post = DraftPost.new(draft_post_params)

    respond_to do |format|
      if @draft_post.save
        format.html { redirect_to @draft_post, notice: 'Draft post was successfully created.' }
        format.json { render :show, status: :created, location: @draft_post }
      else
        format.html { render :new }
        format.json { render json: @draft_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /draft_posts/1
  # PATCH/PUT /draft_posts/1.json
  def update
    respond_to do |format|
      if @draft_post.update(draft_post_params)
        format.html { redirect_to @draft_post, notice: 'Draft post was successfully updated.' }
        format.json { render :show, status: :ok, location: @draft_post }
      else
        format.html { render :edit }
        format.json { render json: @draft_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /draft_posts/1
  # DELETE /draft_posts/1.json
  def destroy
    @draft_post.destroy
    respond_to do |format|
      format.html { redirect_to draft_posts_url, notice: 'Draft post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_draft_post
      @draft_post = DraftPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def draft_post_params
      params.require(:draft_post).permit(:type, :state, :title, :body)
    end
end
