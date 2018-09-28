require_relative './book'

class Author
    attr_accessor :first_name, :last_name, :books

    def initialize(author)
        @first_name = author[:first_name]
        @last_name = author[:last_name]
        @books = []
    end

    def add_book(title, date)
        new_book = Book.new({author_first_name: @first_name, author_last_name: @last_name, publication_date: date, title: title})
        @books << new_book
        new_book
    end
end
