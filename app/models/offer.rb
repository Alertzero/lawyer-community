# == Schema Information
#
# Table name: offers
#
#  id         :bigint           not null, primary key
#  body       :text
#  status     :boolean          default(FALSE)
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  lawyer_id  :bigint           not null
#  request_id :bigint           not null
#
# Indexes
#
#  index_offers_on_lawyer_id   (lawyer_id)
#  index_offers_on_request_id  (request_id)
#
# Foreign Keys
#
#  fk_rails_...  (lawyer_id => lawyers.id)
#  fk_rails_...  (request_id => requests.id)
#
class Offer < ApplicationRecord
  belongs_to :request
  belongs_to :lawyer
  has_rich_text :content
end
