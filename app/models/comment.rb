class Comment < ApplicationRecord
  include Visible
  belongs_to :article

  validates :commenter, presence: true
  validates :body, presence: true, length: { minimum: 3 }
end

