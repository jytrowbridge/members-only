class Post < ApplicationRecord
  validates :title, :body, presence: true
  validates :title, uniqueness: true

  belongs_to :user

  def trunc_post_body
    if self.body.size > 500
      return [self.body[0,500], true]
    else
      return [self.body, false]
    end
  end
end
