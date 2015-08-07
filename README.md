# Word Count ![build_status](https://travis-ci.org/vdice/epicodus-word_count.svg?branch=travis)

##### _Returns the occurrence count of a word in a given string, August 7, 2015_

#### By **_Vaughn Dice_**

## Description

_Users are prompted to submit text as well as a key word for occurrence scanning. They are then returned the number of key word occurrences in supplied text._

_**This app is live!** It has been deployed via Heroku and can be seen  [**here**](https://epicodus-word-count.herokuapp.com/)._

_**Now featuring CI!** A Travis CI build/test cycle is triggered anytime code is pushed. (See `.travis.yml` for configuration details.)_

_**Now featuring auto deploys to Heroku!**
Once Travis gives the thumbs up, the app is deployed to Heroku.  The deploy is only deemed successful if the integration tests also pass against the freshly deployed instance, giving you the **confidence** that your live app is **"Good2Go!"**_

## Setup

* _Clone this repository_
* _Install necessary dependencies with: `bundle`_

## Deploy

_Assuming you have a Heroku account set up and you are logged in, deployments are as simple as pushing commits to origin:_
```
git push origin master
```

## Host the application locally:
```
ruby app.rb
```
## Run unit and integ tests:
```
rspec
```
## Run integ tests against hosted app:

_You can run the integration spec(s) against an externally hosted web app!_

_We use the [Poltergeist](https://github.com/teampoltergeist/poltergeist) driver for Capybara to run tests headlessly against the hosted app instance._

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
