class AddPhotosTable < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.column :user_id, :integer
      t.column :caption, :string
      t.timestamps
    end
  end
end
