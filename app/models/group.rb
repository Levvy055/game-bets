class Group < ActiveRecord::Base
    has_many :countries
    
    validates :name, presence: true, uniqueness: true
end
