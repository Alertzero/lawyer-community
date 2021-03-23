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
class Search < ApplicationRecord

    def search_lawyer
        lawyer = Lawyer.all 

        lawyer = lawyer.where(['first_name LIKE ?', first_name]) if first_name.present?
        lawyer = lawyer.where(['last_name LIKE ?', last_name]) if last_name.present?
        lawyer = lawyer.where(['address LIKE ?', address]) if address.present?

        return lawyer
    end 

end
