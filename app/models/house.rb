class House < ApplicationRecord
  validates :name, presence: true
  validates :source, presence: true
  validates :author, presence: true

end
