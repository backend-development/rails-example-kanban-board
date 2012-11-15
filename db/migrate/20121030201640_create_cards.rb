class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :title
      t.text :description
      t.string :status, :default => :backlog
      t.integer :board_id

      t.timestamps
    end
  end
end
