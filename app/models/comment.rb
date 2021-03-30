# == Schema Information
#
# Table name: comments
#
#  id          :bigint           not null, primary key
#  message     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  advice_id   :bigint           not null
#  client_id   :bigint           not null
#  question_id :bigint           not null
#
# Indexes
#
#  index_comments_on_advice_id    (advice_id)
#  index_comments_on_client_id    (client_id)
#  index_comments_on_question_id  (question_id)
#
# Foreign Keys
#
#  fk_rails_...  (advice_id => advices.id)
#  fk_rails_...  (client_id => clients.id)
#  fk_rails_...  (question_id => questions.id)
#
class Comment < ApplicationRecord
  belongs_to :question
  belongs_to :advice
  belongs_to :client
end
