class Contact < ApplicationRecord
  belongs_to :user
  has_many :contact_groups
  has_many :groups, through: :contact_groups

  def updated_month_day_year
    updated_at.strftime("%B %e, %Y")
  end

  def full_name
    first_and_last = first_name + " " + last_name
  end

  def japanese_phone_prefix
    japanese_phone_number = "+81 " + phone_number 
  end
end
