class CreateUserBooks < ActiveRecord::Migration[5.1]
  #define a change method in which to do the migration
  def change
    create_table :user_books do |t| #we get a block variable here for the table
      t.integer :user_id
      t.integer :book_id
      t.string :due_date
      t.boolean :returned?
    end
  end
end
