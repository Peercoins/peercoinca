class Category < ActiveRecord::Base
	has_many :links
	default_scope {order('important DESC,name')}
end
