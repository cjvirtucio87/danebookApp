module NewsfeedHelper

  def activity_message(activity)
    case activity.trackable
    when Post
      return link_to "made a new post!", timeline_path(activity.trackable.user.timeline)
    when Comment
      return link_to "made a new comment!", timeline_path(activity.trackable.user.timeline)
    end
  end

end
