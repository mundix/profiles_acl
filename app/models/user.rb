class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :roles
  belongs_to :users

  has_attached_file :avatar, styles: { medium: "700x500#", small: "350x250>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  def full_name
    "#{self.first} #{self.last}"
  end
end
