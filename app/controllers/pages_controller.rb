class PagesController < ApplicationController
  layout :choose_layout
  
  def home
  end
  
  def community
  end
  
  def irc_bot_usage
  end
  
  def choose_layout
    case action_name
      when 'home' then 'home'
      else 'content'
    end
  end
end
