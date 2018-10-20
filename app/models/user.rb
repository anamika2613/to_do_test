class User < ApplicationRecord
	has_secure_password
	has_many :to_do_categories, dependent: :destroy
end
