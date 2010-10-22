class CreateSnippets < ActiveRecord::Migration
  def self.up
    create_table :snippets do |t|
      t.integer :user_id
      t.string :title
      t.text :description
      t.text :code

      t.timestamps
    end
  end

  def self.down
    drop_table :snippets
  end
end
