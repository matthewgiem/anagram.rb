
require("rspec")
require("anagram.rb")

describe('String#anagram_search') do
  it('take an user word along with an array of words they think are anagrams and return the words that are anagrams') do
    expect("act".anagram_search("cat,hat,bat,tac")).to(eq(["cat", "tac"]))
  end
end
