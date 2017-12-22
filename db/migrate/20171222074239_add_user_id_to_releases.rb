class AddUserIdToReleases < ActiveRecord::Migration[5.1]
  def up
    change_column :releases, :id, :bigint
    change_column :releases, :app_id, :bigint
    add_reference :releases, :user, after: :app_id
  end

  def down
    change_column :releases, :id, :int
    change_column :releases, :app_id, :int
    remove_reference :releases, :user
  end
end