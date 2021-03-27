# == Schema Information
#
# Table name: questions
#
#  id          :bigint           not null, primary key
#  body        :text
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint           not null
#  client_id   :bigint           not null
#
# Indexes
#
#  index_questions_on_category_id  (category_id)
#  index_questions_on_client_id    (client_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (client_id => clients.id)
#
class Question < ApplicationRecord
  belongs_to :category
  belongs_to :client
  has_many :comments
  has_many :advices
  has_rich_text :content
end
