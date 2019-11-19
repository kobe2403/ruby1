Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	 # root -> ルートパス(localhost:3000)でアクセスした場合に割り当てられる設定。Controllerファイルに記述するindexメソッドを実行するように定義
    get 'posts', to: 'posts#index'

    # posts/newでアクセスされたらposts/newへ（投稿ページを表示）
    get 'posts/new', to: 'posts#new'

    # 投稿データ作成
    post 'posts', to: 'posts#create'	
end
