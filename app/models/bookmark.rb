class Bookmark < ActiveRecord::Base
  belongs_to :user
  has_many :comments, :as => :commentable
  after_create :generate_permalink
  
  #acts_as_taggable_on :topics, :questions
                    
  has_many :flags, :as => :flaggable
  
  validates_uniqueness_of :url

=begin  
  define_index do
    # fields
    indexes title, :sortable => true
    indexes description
    indexes comments.body
    indexes taggings.tag(:name), :as => :topic
    indexes language.name, :as => :language, :sortable => true
    indexes [user.firstname, user.lastname], :as => :author, :sortable => true

    # attributes
    has user_id, language_id, created_at, updated_at
  end
=end    
  def self.per_page
    5
  end
  
  def to_param
    "#{id}-#{title.gsub(/[^a-z0-9]+/i, '-')}"
  end
    
  private
    def generate_permalink
      update_attributes(:permalink => "#{self.id}-#{self.title.parameterize}") 
    end
end
