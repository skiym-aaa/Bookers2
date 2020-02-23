class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      id :integer
      t.string :title
      text :body
      user_id :integer

      t.timestamps
    end
  end
end
