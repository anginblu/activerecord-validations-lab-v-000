class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true, length: { :minimum => 250 }
  validates :summary, presence: true, length: { :maximum => 250 }
  validates :category, presence: true, inclusion: { in: ["Fiction", "Non-Fiction"] }


  def clickbait_in_title
    @array = ["Secret", "Top ", "Guess", "Wont", "Believe"]
    unless @array.any? {|i| title.split(" ").include?(i)}

  end

end
