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
require "test_helper"

class LawyerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
