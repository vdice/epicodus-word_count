require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the result path', {:type => :feature}) do
  PETER_PIPER_STRING =
    'If Peter Piper picked a peck of pickled peppers,' +
    ' where\'s the peck of pickled peppers Peter Piper picked?'

  it('processes the input, searching for occurences of key and returns the result') do
    visit('/')
    fill_in('input', :with => PETER_PIPER_STRING)
    fill_in('key', :with => 'peck')
    click_button('Submit')
    expect(page).to have_content('2')
  end
end
