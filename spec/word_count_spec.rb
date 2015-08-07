require('rspec')
require('word_count')

describe('String#word_count') do
  it('accepts user input') do
    expect('user input'.word_count('')).to(eq(0))
  end
end
