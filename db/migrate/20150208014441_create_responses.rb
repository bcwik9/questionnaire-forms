class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :user

      t.timestamps
    end
  end
end
