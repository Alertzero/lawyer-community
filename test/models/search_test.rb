# == Schema Information
#
# Table name: searches
#
#  id         :bigint           not null, primary key
#  address    :string
#  first_name :string
#  last_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class SearchTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
