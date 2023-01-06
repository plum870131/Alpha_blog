class Article < ApplicationRecord
    validates :title, presence: true
    validates :descriptions, presence: true
end