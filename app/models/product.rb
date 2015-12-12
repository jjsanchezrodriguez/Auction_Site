class Product < ActiveRecord::Base
  validates:description, presence:true
  validates:deadline, presence:true
  validates:user_id, presence:true

  belongs_to :user
end
