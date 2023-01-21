class Article < ApplicationRecord
    belongs_to :user
    
    validates :title, presence: true
    validates :descriptions, presence: true
end