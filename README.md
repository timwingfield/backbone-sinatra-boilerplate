## Coffee Sinatra Boilerplate

Simple boilerplate app to start a new backbone project utilizing coffeescript, Sinatra,
Twitter Bootstrap, and MongoDB.

### How to clone as the base to a project

`git clone -o boilerplate git://github.com/timwingfield/backbone-sinatra-boilerplate.git new_project_name`

`git remote add origin ssh://git@github.com/user/new_project_name.git`

optional: `git remote rm boilerplate`

### How to get everything started

`bundle install` to install everything

`bundle exec guard` to kick off all the tests

`bundle exec shotgun` to fire up the website

### Renaming Your App Namespace

Rename `AppName` to your application name in the files listed below:

* In `app/app.coffee` on lines 1 and 4
* In `app/js/app/routers.coffee` on lines 2 and 7
* In `app/js/app/views.coffee` on line 2
