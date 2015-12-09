class AddAvatarToDogs < ActiveRecord::Migration
  def up
    add_attachment :dogs, :avatar
  end

  def down
    remove_attachment :dogs, :avatar
  end
end
