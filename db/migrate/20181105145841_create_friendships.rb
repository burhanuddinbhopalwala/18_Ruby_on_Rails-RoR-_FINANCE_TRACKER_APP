class CreateFriendships < ActiveRecord::Migration[5.2]
  def up()
    create_table :friendships do |t|
      # 1: For many-to-many self association
      t.belongs_to :user 
      t.belongs_to :friend, class: "User"

      t.timestamps 
    end

    def down()
      drop_table :friendships
    end
  end
end
