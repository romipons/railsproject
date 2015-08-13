class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.string :subject
      t.text :description
      t.string :responsible
      t.string :type_of_incident
      t.integer :priority

      t.timestamps
    end
  end
end
