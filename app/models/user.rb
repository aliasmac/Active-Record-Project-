class User < ActiveRecord::Base
  has_many :user_books
  has_many :books, through: :user_books

  def check_out_book(book, due_date:)
    UserBooks.create(user_id: self.id, book_id: book.id, due_date: due_date, returned?: false)
  end

  def return_a_book(book)
    UserBooks.where( 'book_id = ? AND user_id = ?' , book.id, self.id ).limit(1).update(returned?: true)
  end

end



#mm/dd/yy
