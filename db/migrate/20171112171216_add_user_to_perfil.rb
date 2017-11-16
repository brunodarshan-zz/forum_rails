class AddUserToPerfil < ActiveRecord::Migration[5.0]
  def change
    add_reference :perfils, :user, foreign_key: true
  end
end
