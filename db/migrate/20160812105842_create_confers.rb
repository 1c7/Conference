class CreateConfers < ActiveRecord::Migration[5.0]
  def change
    create_table :confers do |t|
      t.string :name
      t.text :description
      t.string :link
      t.datetime :start_time
      t.datetime :end_time
      t.references :subject
      t.references :country
      t.string :img
      t.string :location

      t.timestamps
    end
  end
end
