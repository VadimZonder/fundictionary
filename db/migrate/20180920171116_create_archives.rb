class CreateArchives < ActiveRecord::Migration
  def change
    create_table :archives do |t|
      t.string :ip
      t.string :port
      t.string :browser

      t.timestamps null: false
    end
  end
end
