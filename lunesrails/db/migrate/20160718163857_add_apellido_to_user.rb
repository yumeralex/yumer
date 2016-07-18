class AddApellidoToUser < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :apellido, :string
  	#remove_column :users, :email eliminar columna
  end
end
