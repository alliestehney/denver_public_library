require './test/test_helper'
require './lib/author'
require './lib/book'

class AuthorTest < Minitest::Test
    def test_it_adds_a_book
        author = Author.new({ first_name: "Charlotte", last_name: "Bronte", books: []})
        author.add_book("Jane Eyre", "1847")
        assert_equal author.books.count, 1
    end
end

