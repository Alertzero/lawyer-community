# == Schema Information
#
# Table name: clients
#
#  id                     :bigint           not null, primary key
#  current_sign_in_ip     :string
#  email                  :string           not null
#  encrypted_password     :string           not null
#  first_name             :string           not null
#  last_name              :string           not null
#  last_sign_in_at        :datetime
#  nickname               :string           not null
#  phone_no               :integer          not null
#  province               :text             not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_clients_on_email                 (email) UNIQUE
#  index_clients_on_reset_password_token  (reset_password_token) UNIQUE
#
class Client < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :questions
  has_many :requests
  has_one_attached :avatar
  
  validates :avatar,   content_type: { in: %w[image/jpeg image/gif image/png],
                                      message: "must be a valid image format" },
                      size: { less_than: 5.megabytes,
                            message:     "should be less than 5MB" }

  # Returns a resized image for display.
  def display_avatar
    avatar.variant(resize_to_limit: [300, 300])
  end

end
