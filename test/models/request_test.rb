# == Schema Information
#
# Table name: requests
#
#  id          :bigint           not null, primary key
#  body        :text
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint           not null
#  clients_id  :bigint           not null
#
# Indexes
#
#  index_requests_on_category_id  (category_id)
#  index_requests_on_clients_id   (clients_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (clients_id => clients.id)
#
require "test_helper"

class RequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
