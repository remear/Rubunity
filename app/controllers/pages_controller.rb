class PagesController < ApplicationController
  layout :choose_layout
  
  def home
    @recent_bookmarks = Bookmark.all(:limit => 3)
  end
  
  def community
  end
  
  def irc_bot_usage
  end
  
  def choose_layout
    case action_name
      when 'home' then 'home'
      else 'redesign'
    end
  end
end
