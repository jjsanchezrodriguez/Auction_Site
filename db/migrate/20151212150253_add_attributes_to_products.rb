class AddAttributesToProducts < ActiveRecord::Migration
  def change
    add_column :products, :title, :string
  end

#para añadir un campo
 #rails g migration add_attributes_to_products title:string

end
