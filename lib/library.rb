class Library
    attr_accessor :books

    def initialize
        @books = []
    end

    def add_to_collection(book)
        @books << book
    end

    def include?(title)
        book_titles = []
        @books.each do |book|
            book_titles << book.title
        end
        book_titles.include? title
    end

    def card_catalogue
        @books.sort_by{ |book| book.author_last_name }
    end

    def find_by_author(author)
        @books.select { |book| book.author_last_name == author}
    end

    def find_by_publication_date(date)
        @books.select { |book| book.publication_date == date}
    end
end