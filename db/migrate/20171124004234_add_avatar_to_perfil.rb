class AddAvatarToPerfil < ActiveRecord::Migration[5.0]
  def change
    add_column :perfils, :avatar, :string
  end
end
