class BlogviewController < ApplicationController
	def index
		@articles = Article.all.order('id DESC')
	end

	def create
		@article = Article.new
		@article.user_name = params[:user_name]
		@article.pic_url = params[:pic_url]
		@article.temp = params[:temp]
		@article.humidity = params[:humidity]
		


		@plant = Plant.last

		if @article.save
			redirect_to '/blogview'
		else
			redirect_to '/'
		end

	end

	def create_comment
		id = params[:id]
		comment = params[:comment]

		@article = Article.find(id)
		@article.comment = comment["comment"].to_s
		@article.save

		redirect_to '/'

	#	render text:id

	end


	private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:user_name, :pic_url, :temp, :humidity, :comment)
    end

end
