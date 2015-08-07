# Word Count ![build_status](https://travis-ci.org/vdice/epicodus-word_count.svg?branch=travis)

##### _Returns the occurrence count of a word in a given string, August 7, 2015_

#### By **_Vaughn Dice_**

## Description

_Users can type in text as well as the word that they would like the number of occurrences for.  They are then returned said number of occurrences._

_**This app is live!** It has been deployed via Heroku and can be seen  [**here**](https://epicodus-word-count.herokuapp.com/)._

_**Now featuring CI!** A Travis CI build/test cycle is triggered anytime code is pushed. In addition, the app is deployed to Heroku if Travis gives the all clear.  
(See `.travis.yml` for the configuration details.)_

## Setup

* _Clone this repository_
* _Run `bundle`_

## Host the application locally:
```
ruby app.rb
```
## Run unit and integ tests:
```
rspec
```
## Run End-To-End tests:

_You can run the tests in `e2e` against an externally hosted web app!_

_We use the [Poltergeist](https://github.com/teampoltergeist/poltergeist) driver for Capybara to run tests headlessly against a hosted app instance._

_You'll need to install [PhantomJS](http://phantomjs.org/) on your host machine. For example, on Mac via homebrew:_
```
brew install phantomjs
```
_You can then run:_

```
APP_HOST=<application_host_url> rspec
```

## Technologies Used

_Ruby, rspec, Sinatra, Capybara, Heroku, Travis CI, Poltergeist, PhantomJS_

### Legal

Copyright (c) 2015 **_Vaughn Dice_**

This software is licensed under the MIT license.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
