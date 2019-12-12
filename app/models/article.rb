class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :title, presence:true, length:{minimum:5}
	validates :content, presence:true, length:{minimum:10}
	validates :status, presence:true
	scope :status_rilis, -> {where(status:'Rilis')}
end
