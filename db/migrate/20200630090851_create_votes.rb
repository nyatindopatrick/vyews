class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.integer :voter_id
      t.integer :post_id
      t.boolean :voted

      t.timestamps
    end
  end
end
