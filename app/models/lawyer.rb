# == Schema Information
#
# Table name: lawyers
#
#  id                     :bigint           not null, primary key
#  address                :text             default(""), not null
#  current_sign_in_ip     :string
#  description            :text             default(""), not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string           default(""), not null
#  last_name              :string           default(""), not null
#  last_sign_in_at        :datetime
#  nickname               :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  telephone_number       :integer          default(0), not null
#  university             :text             default(""), not null
#  verified               :boolean          default(FALSE), not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  lawyer_id              :string           default("0000000000"), not null
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
end
