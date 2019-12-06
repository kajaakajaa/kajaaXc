class UsersController < ApplicationController
  # ↓ログインが必要なページは自動でログイン画面へ飛ぶメソッド(aplication_controllerへ)
  before_action :sign_in_required, only: [:index]

  def index
  end

  def show
  end

  def new
  end
end
