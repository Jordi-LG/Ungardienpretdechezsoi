class CreateDistricts < ActiveRecord::Migration[5.2]
  def change
    create_table :districts do |t|
      t.string :distric_name

      t.belongs_to :petowner, index: true

      t.timestamps
    end
  end
end