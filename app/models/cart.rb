class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_items, dependent: :destroy
  has_many :products, through: :cart_items

  def total_price
    cart_items.sum{&:total_price}
  end

  def add_product(product)
    # find/create cart item for product and add to user Cart
  end

  def remove_product(product)
    # find cart item in list and remove
  end

  def update_quantity(product, quantity)
    # find cart item in list and update quantity
  end

  def clear
    # remove all cart items
  end
end
