class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  
  has_many :shares
  
  extend FriendlyId
    friendly_id :name, use: :slugged
  
  after_create :send_welcome_email
  # after :send_update_email
  def send_welcome_email
	  UserMailer.welcome_email(self).deliver_now
  end
  def send_update_email
    UserMailer.update_email(self).deliver_now
  end
end
