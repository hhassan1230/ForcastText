class User < ActiveRecord::Base
  validates :phone_number, presence: true, length: { is: 10 }
end
