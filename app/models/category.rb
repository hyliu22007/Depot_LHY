class Category < ActiveRecord::Base
  belongs_to :parent, :class_name => "Category",:foreign_key => 'parent_id'
  
#  has_many :children,    
 ##           :foreign_key => 'parent_id',                        
   #        :dependent => :destroy            
#
            
  has_many :products
end
