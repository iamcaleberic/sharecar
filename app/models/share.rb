class Share < ActiveRecord::Base
	belongs_to :user
    belongs_to :superuser
	validates :user_id, presence: true
	validates :body, presence: true, length: { maximum: 140 }
	  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/



end
