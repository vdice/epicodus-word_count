require('rspec')
require('word_count')

describe('String#word_count') do
  before do
    @SPECIAL_CHAR_STRING = '\'\'\'_+?">:}{}"*!#@#%@))))))'
    @PETER_PIPER_STRING = 'If Peter Piper picked a peck of pickled peppers,' +
      ' where\'s the peck of pickled peppers Peter Piper picked?'
  end

  it('accepts user input and returns 0 if key is empty') do
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

  it("accepts the special character string #{@SPECIAL_CHAR_STRING} and key '@' and returns 2") do
    expect(@SPECIAL_CHAR_STRING.word_count('@')).to(eq(2))
  end

  it('accepts the \'Peter Piper...\' example string and returns correct count') do
    expect(@PETER_PIPER_STRING.word_count('peck')).to(eq(2))
  end
end
