class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
