class Tag < ActiveRecord::Base
  has_and_belongs_to_many :tasks

  scope :popularity_list, -> { 
  		joins(:tasks)
  		.select("tags.name, count(title) AS popularity_order")
  		.group(:name).order("popularity_order DESC")
  	}
end
