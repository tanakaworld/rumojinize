class RumojinizedArticlesController < ApplicationController
  before_action :set_rumojinized_article, only: [:show, :edit, :update, :destroy]

  # GET /rumojinized_articles
  def index
    @rumojinized_articles = RumojinizedArticle.all
  end

  # GET /rumojinized_articles/1
  def show
  end

  # GET /rumojinized_articles/new
  def new
    @rumojinized_article = RumojinizedArticle.new
  end

  # GET /rumojinized_articles/1/edit
  def edit
  end

  # POST /rumojinized_articles
  def create
    @rumojinized_article = RumojinizedArticle.new(rumojinized_article_params)

    if @rumojinized_article.save
      redirect_to @rumojinized_article, notice: 'Rumojinized article was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /rumojinized_articles/1
  def update
    if @rumojinized_article.update(rumojinized_article_params)
      redirect_to @rumojinized_article, notice: 'Rumojinized article was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /rumojinized_articles/1
  def destroy
    @rumojinized_article.destroy
    redirect_to rumojinized_articles_url, notice: 'Rumojinized article was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rumojinized_article
      @rumojinized_article = RumojinizedArticle.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rumojinized_article_params
      params.require(:rumojinized_article).permit(:body)
    end
end
