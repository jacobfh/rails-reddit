# == Schema Information
#
# Table name: comments
#
#  id         :bigint(8)        not null, primary key
#  post_id    :integer
#  user_id    :integer
#  text       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ApplicationRecord

    belongs_to :post
    belongs_to :user

end
