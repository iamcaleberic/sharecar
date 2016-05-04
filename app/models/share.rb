class Share < ActiveRecord::Base
	belongs_to :user
	validates :user_id, presence: true
	validates :body, presence: true, length: { maximum: 140 }


	def self.search(query)
  		where("body like ?", "%#{query}%") 
  		where("location like ?", "%#{query}%")
  		where("username like ?", "%#{query}%")
  		where("created_at like ?", "%#{query}%")
  		where("car_make like ?", "%#{query}%")
  		where("price like ?", "%#{query}%") 
  		where("experience like ?", "%#{query}%")
  		where("route like ?", "%#{query}%")
  		where("luggage like ?", "%#{query}%")
	end


end
