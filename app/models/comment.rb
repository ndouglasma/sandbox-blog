class Comment < ActiveRecord::Base
  validates :commenter, presence: true, exclusion: { in: [nil] }
  validates :body, presence: true, exclusion: { in: [nil] }

  belongs_to :article
end
