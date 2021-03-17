# == Schema Information
#
# Table name: clients
#
#  id                     :bigint           not null, primary key
#  address                :text             default(""), not null
#  current_sign_in_ip     :string
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
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_clients_on_email                 (email) UNIQUE
#  index_clients_on_reset_password_token  (reset_password_token) UNIQUE
#
require "test_helper"

class ClientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
