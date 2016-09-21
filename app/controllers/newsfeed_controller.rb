class NewsfeedController < ApplicationController
  skip_before_action :correct_user

  def show
    @user = current_user
    @activities = PublicActivity::Activity.where(owner_id: current_user.friend_ids)
  end
end
