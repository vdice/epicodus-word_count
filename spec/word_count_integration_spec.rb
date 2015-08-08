require('capybara/rspec')
require('capybara/poltergeist')
require('phantomjs')
require('./app')

config = {:type => :feature}
host = 'localhost'
if ENV['APP_HOST'] # Run against hosted app via headless poltergeist driver
  # fix for https://github.com/teampoltergeist/poltergeist/issues/539
  Phantomjs.path
  Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(app, :phantomjs => Phantomjs.path)
  end

  Capybara.run_server = false
  Capybara.current_driver = Capybara.javascript_driver = :poltergeist
  host = Capybara.app_host = ENV['APP_HOST']
  config[:js] = true
else # Run against localhost via Rack::Test
  Capybara.app = Sinatra::Application
  set(:show_exceptions, false)
end

PETER_PIPER_STRING =
  'If Peter Piper picked a peck of pickled peppers,' +
  ' where\'s the peck of pickled peppers Peter Piper picked?'
PETER_PIPER_KEY = 'peck'
EXPECTED_COUNT = 2

describe("'Word Count', hosted at #{host}") do
  describe('the result path', config) do
    it('processes the input, searches for occurrences of key and returns the resulting number') do
      visit('/')
      expect(page).to have_content("Word Count")
      fill_in('input', :with => PETER_PIPER_STRING)
      fill_in('key', :with => PETER_PIPER_KEY)
      click_button('Submit')
      expect(page).to have_content(PETER_PIPER_STRING)
      expect(page).to have_content(PETER_PIPER_KEY)
      expect(page).to have_content(EXPECTED_COUNT)
    end

    it('returns users to index') do
      visit('/result?input=hello+world&key=world')
      expect(page).to have_content('1')
      click_link('Return')
      expect(page).to have_content("Word Count")
    end
  end

  describe('the resubmit path', config) do
    it('if no input string is present') do
      visit('/')
      expect(page).to have_content("Word Count")
      fill_in('key', :with => PETER_PIPER_KEY)
      click_button('Submit')
      expect(page).to_not have_content(EXPECTED_COUNT)
      expect(page).to have_content("You haven't entered a string to search.")
    end
  end
end
