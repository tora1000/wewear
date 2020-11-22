class CreateCoordinations < ActiveRecord::Migration[6.0]
  def change
    create_table :coordinations do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :recommended_point, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
