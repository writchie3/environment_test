class Book < ApplicationRecord
    validates :title, :author, :price, :date_released, presence: true
end
