class User < ApplicationRecord
    has_many :aids, dependent: :destroy
end
