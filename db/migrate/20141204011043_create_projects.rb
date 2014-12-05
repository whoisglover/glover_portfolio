class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :slug
      t.string :git_url
      t.string :live_url
      t.integer :img_count
      t.timestamps
    end
    add_index :projects, :slug, unique: true
  end
end
