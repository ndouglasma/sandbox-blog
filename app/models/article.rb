class Article < ActiveRecord::Base
  validates :title, presence: true, uniqueness: { case_sensitive: false }, exclusion: { in: [nil] }, length: { minimum: 5 }
  validates :description, presence: true, exclusion: { in: [nil] }, length: { minimum: 20 }
  validates :url, presence: true, exclusion: { in: [nil] }
  validates :url, format: { with: URI.regexp }, if: 'url.present?'
  
  has_many :comments
end
