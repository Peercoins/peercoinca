class Link < ActiveRecord::Base
	belongs_to :category
	validates :name, :url, :category, presence: true
	validates :url, uniqueness: { case_sensitive: false, message: 'this url is already in the database!' }
	default_scope {order('name')}
end