# == Schema Information
#
# Table name: votes
#
#  id         :bigint(8)        not null, primary key
#  post_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Vote < ApplicationRecord
end
