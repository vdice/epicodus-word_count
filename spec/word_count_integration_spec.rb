require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the result path', {:type => :feature}) do
  PETER_PIPER_STRING =
    'If Peter Piper picked a peck of pickled peppers,' +
    ' where\'s the peck of pickled peppers Peter Piper picked?'
  PETER_PIPER_KEY = 'peck'
  EXPECTED_COUNT = 2

  it('processes the input, searching for occurrences of key and returns the result') do
    visit('/')
    expect(page).to have_content("Word Count")
    fill_in('input', :with => PETER_PIPER_STRING)
    fill_in('key', :with => PETER_PIPER_KEY)
    click_button('Submit')
    expect(page).to have_content(PETER_PIPER_STRING)
    expect(page).to have_content(PETER_PIPER_KEY)
    expect(page).to have_content(EXPECTED_COUNT)
  end

  it('returns users to index', {:type => :feature}) do
    visit('/result?input=hello+world&key=world')
    expect(page).to have_content('1')
    click_link('Return')
    expect(page).to have_content("Word Count")
  end
end
