class Post < ActiveRecord::Base

  #belong_to :rover

  def product
    @product ||= Product.find(product_id) unless product_id.blank?
  end

end
