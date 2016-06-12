class User < ActiveRecord::Base
    has_secure_password
    has_many :bets
    
    
    def is_admin
        self.level == 4
    end
    
    validates :visible_name, presence: true, uniqueness: true
    validates :password_digest, presence: true
    validates :email, presence: true, uniqueness: true
end
