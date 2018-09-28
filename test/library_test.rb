require './test/test_helper'
require './lib/book'
require './lib/library'

class LibraryTest < Minitest::Test
    def test_it_adds_it_to_collection
        lib = Library.new
        new_book = Book.new({author_first_name: "Charlotte", author_last_name: "Bronte", publication_date: "1847", title: "Jane Eyre"})
        lib.add_to_collection(new_book)
        assert_equal lib.books.count, 1
    end

    def test_card_catologue
        dpl = Library.new
        book1 = Book.new({author_first_name: "Charlotte", author_last_name: "Bronte", publication_date: "1847", title: "Jane Eyre"})
        book2 = Book.new({author_first_name: "Harper", author_last_name: "Lee", publication_date: "1960", title: "To Kill a Mockingbird"})
        dpl.add_to_collection(book1)
        dpl.add_to_collection(book2)
        assert_equal dpl.card_catalogue.first, book1
    end
end
