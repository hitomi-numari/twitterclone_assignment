module TweetmesHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm' || action_name == 'create'
      confirm_tweetmes_path
    elsif action_name == 'edit'
      tweetme_path
    end
  end
end
