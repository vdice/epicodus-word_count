require('rspec')
require('word_count')

describe('String#word_count') do
  it('accepts user input') do
    expect('user input'.word_count('')).to(eq(0))
  end

  it('accepts the string \'hello world\' and key \'world\' and returns 1') do
    expect('hello world'.word_count('world')).to(eq(1))
  end
end
