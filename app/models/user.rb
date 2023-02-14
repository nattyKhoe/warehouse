class User < ApplicationRecord
    has_secure_password
    
    validates :first_name, uniqueness: {scope: :last_name}
    validates :account_type, inclusion: ["admin", "priviledge", "user"]
    validates_date :date_of_birth, before: lambda {18.years.ago},
        before_message: "must be at least 18 years old"
end
