# == Schema Information
#
# Table name: lawyers
#
#  id                     :bigint           not null, primary key
#  current_sign_in_ip     :string
#  description            :text
#  email                  :string           not null
#  encrypted_password     :string           not null
#  first_name             :string           not null
#  last_name              :string           not null
#  last_sign_in_at        :datetime
#  nickname               :string           not null
#  phone_no               :string           not null
#  province               :text             not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  university             :text
#  verified               :boolean          default(FALSE), not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  lawyer_id              :string           not null
#
# Indexes
#
#  index_lawyers_on_email                 (email) UNIQUE
#  index_lawyers_on_reset_password_token  (reset_password_token) UNIQUE
#
class Lawyer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :offers

  def self.search(search)
    if search
        where(["lower(first_name) LIKE ?","%#{search.downcase}%"])
    else
        all
    end
end 
end
