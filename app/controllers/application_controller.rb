class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource) #sign_outした直後のアクションを決める
      songs_path
  end

  def after_sign_out_path_for(resource) #ログアウトした後どのページに移行するかのメソッド
      songs_path
  end

  def sign_in_required #サインイン時の要求(条件)
        redirect_to new_user_session_url unless user_signed_in? # ↑ログインしてなければログインページへ飛ぶ
  end
end
