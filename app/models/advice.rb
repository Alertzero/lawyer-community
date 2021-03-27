# == Schema Information
#
# Table name: advices
#
#  id          :bigint           not null, primary key
#  message     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  lawyer_id   :bigint           not null
#  question_id :bigint           not null
#
# Indexes
#
#  index_advices_on_lawyer_id    (lawyer_id)
#  index_advices_on_question_id  (question_id)
#
# Foreign Keys
#
#  fk_rails_...  (lawyer_id => lawyers.id)
#  fk_rails_...  (question_id => questions.id)
#
class Advice < ApplicationRecord
  belongs_to :question
  belongs_to :lawyer
end
