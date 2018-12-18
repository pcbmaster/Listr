class List < ApplicationRecord
  has_many :list_items, dependent: :destroy
end

class Collection < List
end

class ToDo < List
end

class Grocery < List
end
