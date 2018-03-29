class Article < ApplicationRecord
	  # attr_accessible :text, :comments_attributes
	# => attr_accessible :text, :comments_attributes
	has_many :comments, dependent: :destroy
	accepts_nested_attributes_for :comments, allow_destroy: true

#validates_uniqueness_of :text

    validates :title,length: { minimum: 5 }, uniqueness:  :text

end
