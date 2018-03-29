class Contact < ApplicationRecord
  belongs_to :user
  has_many :group_contacts
  has_many :groups, through: :group_contacts

  validates :first_name, :last_name, presence: true
  validates :email, uniqueness: true

def friendly_updated_at
  updated_at.strftime("%b %e, %l:%M %p")
end 

def full_name 
  first_name + " " + last_name
end 

def japanese_prefix
  "+81" + phone_number.to_s 
end 


end
