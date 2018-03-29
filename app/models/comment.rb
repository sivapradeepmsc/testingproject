class Comment < ApplicationRecord
    #attributes_accessible :text	

  belongs_to :article
  has_many :articles, dependent: :destroy
  
accepts_nested_attributes_for :articles, allow_destroy: true


validates_uniqueness_of :text

   
end