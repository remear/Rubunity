class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :commmentable, :polymorphic => true
end
