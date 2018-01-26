class Post < ActiveRecord::Base
  validates :title, presence: true, inclusion: { in: ["Won't Believe", "Secret", "Top", "Guess"], allow_blank: true }
  validates :content, presence: true, length: { :minimum => 250 }
  validates :summary, presence: true, length: { :maximum => 250 }
  validates :category, presence: true, inclusion: { in: ["Fiction", "Non-Fiction"] }
end
