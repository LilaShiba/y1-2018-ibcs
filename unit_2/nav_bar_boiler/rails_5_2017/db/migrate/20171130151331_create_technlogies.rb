class CreateTechnlogies < ActiveRecord::Migration[5.1]
  def change
    create_table :technlogies do |t|
      t.string :name
      t.references :portfolio

      t.timestamps
    end
  end
end
