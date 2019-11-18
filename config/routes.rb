Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get "", to: "posts#index"#post=これから作成するcontrollerの名前、indexはcontrollerに設定する関数名	
end
