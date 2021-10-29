class AddActorReferenceToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :characters, :actors
    add_index :characters, :actor_id
    change_column_null :characters, :actor_id, false
  end
end
