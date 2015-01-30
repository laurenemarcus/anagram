require('rspec')
require('anagram')

describe('Array#anagram') do
  it("accepts a 2 element array where the second element is already an anagram of the first element, and will return the second element") do
    expect(["sub", "bus"].anagram()).to eq(["bus"])
  end

  it("accepts a 4 element array where the second and fourth elements are anagrams of the first and the third element is not an anagram, so only the second and fourth elements will be returned") do
    expect(["sub", "bus", "suss", "sub", "ubs"].anagram()).to eq(["bus", "sub", "ubs"])
  end

  it("accepts partial matches") do
    expect(["sub", "bus", "us", "ubss", "ubs", "sus"].anagram()).to eq(["bus", "us", "ubs"])
  end
end
