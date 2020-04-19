class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.integer :score
      t.text :review
      t.text :referral

      t.timestamps
    end
  end
end
