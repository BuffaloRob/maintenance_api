class CreateJwtBlacklists < ActiveRecord::Migration[5.2]
  def change
    create_table :jwt_blacklists do |t|
      t.stringn :jti, null: false
    end
    add_index :jwt_blacklists, :jti
  end
end
