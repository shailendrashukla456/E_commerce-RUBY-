class AddCard < ApplicationRecord
    belongs_to :user
    belongs_to :subcategory
end
