class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true, length: { :minimum => 250 }
  validates :summary, presence: true, length: { :maximum => 250 }
  validates :category, presence: true, inclusion: { in: ["Fiction", "Non-Fiction"] }


  def clickbait(title)
    @array = ["Secret", "Top ", "Guess", "Wont", "Believe"]
    @array.each do |phrase|
      if title.split(" ").include?(phrase)
        
  end
  
end
