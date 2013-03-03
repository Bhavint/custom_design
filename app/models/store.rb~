# == Schema Information
#
# Table name: stores
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  user_id          :integer
#  twitterh         :string(255)
#  fbid             :string(255)
#  pinit            :string(255)
#  custcount        :float
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  pic_file_name    :string(255)
#  pic_content_type :string(255)
#  pic_file_size    :integer
#  pic_updated_at   :datetime
#  domain           :string(255)
#  phone_number     :string(255)
#  description      :text
#  country          :string(255)
#  email            :string(255)
#

class Store < ActiveRecord::Base
	attr_accessible :custcount, :fbid, :name, :pinit, :twitterh, :pic, :domain, :country, :description, :phone_number, :email
	validates :user_id, presence: true
	belongs_to :user
	
	has_attached_file :pic, :styles => { :medium => "300x300>", :thumb => "100x100>" }

end
