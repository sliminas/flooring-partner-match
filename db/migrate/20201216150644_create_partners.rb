class CreatePartners < ActiveRecord::Migration[6.1]
  def change
    create_table :partners do |t|
      t.string :name
      t.string :materials

      t.float :latitude
      t.float :longitude

      t.integer :operating_radius
      t.float :rating

      t.timestamps
    end
  end
end
