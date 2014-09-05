class CreateEvent < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :time
      t.string :place
    end
  end
end
