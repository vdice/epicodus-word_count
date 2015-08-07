require('rspec')
require('word_count')

describe('String#word_count') do
  it('accepts user input') do
    expect('user input'.word_count('')).to(eq(0))
  end

  it('accepts the string \'hello world\' and key \'world\' and returns 1') do
    expect('hello world'.word_count('world')).to(eq(1))
  end

  it('accepts the string \'1 1 1 1 1\' and key \'1\' and returns 5') do
    expect('1 1 1 1 1'.word_count('1')).to(eq(5))
  end

  it('accepts the string \'1 1 1 1 1\' and key \' \' and returns 4') do
    expect('1 1 1 1 1'.word_count(' ')).to(eq(4))
  end

  it('accepts the string \'11111\' and key \'1\' and returns 5') do
    expect('11111'.word_count('1')).to(eq(5))
  end
end
