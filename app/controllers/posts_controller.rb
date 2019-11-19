#ApplicationControllerクラスを継承することで、クラスがコントローラーと認識される
class PostsController < ApplicationController
	#posts/index
	def index
	end

	#posts/new
	def new
		@post = Post.new#@postというインスタンス変数にPostモデルのnewメソッド。新規作成・保存
    end

    #posts/create　投稿の保存
    def create
        # データはparamsという変数に渡されてくる
        # create は、Postモデルのクラスメソッド
        Post.create(post_params)
    end

    private

    # paramsから欲しいデータのみ抽出
    def post_params
        params.require(:post).permit(:name, :title, :content)
    end
end