class AddConfirmableToAdminUser < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_users, :activated, :boolean, default: false
  end
end
