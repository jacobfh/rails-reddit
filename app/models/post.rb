# == Schema Information
#
# Table name: posts
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer
#  title      :string
#  text       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord

    has_many :comments
    has_many :votes
    belongs_to :user

    validates :title, presence: true
    validates :text, presence: true

end
