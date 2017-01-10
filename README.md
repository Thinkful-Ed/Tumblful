![Tumblful Logo](app/assets/images/tumblful.png?raw=true "Tumblful Logo")
=============
# Overview

#### Outline of Tumblful

This is my fork of Tumblful which was created as part of the Thinkful course "Essentials of Full Stack Development in Rails." Tumblful is a micro-blogging app in the style of Tumblr. It was created based on the codebase of Tweetful which is another app created for the course.

#### What I Learned Making This Webapp
As part of the course curriculum I learned how to:

1. Create models
    * Models created are:
        * ImageLink
        * TestPost
        * ArticleLink

2. Create scopes
    * Created a scope for ArticleLink which allows the user to see the 10 most recent instances in reverse chronological order and validates that the user has input a url to avoid generating exceptions.

3. Create Controllers
    * Controllers created are:
        * ImageLinksController
        * TextPostsController
        * ArticleLinksController

4. Implement Functionality Using the Above-Mentioned Controllers and Models With Their Views
   * Like Button
   * Delete Button
   * Creating New Entries

#### Visual Styling

I also reworked a lot of the Tumblful CSS, as you can see in the screenshots below.

##### Initial Version of Tumblful

![Screenshot of the initial version of Tumblful](app/assets/images/InitialTumblful.png?raw=true "Initial Tumblful")

##### My Fork of Tumblful
![Screenshot of my fork of Tumblful](app/assets/images/ForkedTumblful4.png?raw=true "My fork of Tumblful")

#### Special Thanks
Thank You to the Thinkful community for helping me debug my code when I ran into issues.

## Before Beginning
-------------

Ensure you have the latest version of Ruby Version Manager (RVM) and ruby 2.1.5 installed.

```sh
# If you do not have RVM installed, you can do so as follows
> curl -L https://get.rvm.io | bash -s stable

# If you already have RVM install, make sure it's up to date
> rvm get head # rvm update for older versions

# Install the most recent Ruby 2.1.5 package
> rvm install ruby-2.1.5
```

## Getting Started
-------------

```sh
# Clone the repository
> git clone git@github.com:Thinkful-Ed/tumblful.git

> cd ./tumblful

# Install the required gems
> bundle install

# Generate a new config/initializers/secret_token.rb file.
> echo "Tumblful::Application.config.secret_key_base = '`bundle exec rake secret`'" > config/initializers/secret_token.rb

# Set up the database
> bundle exec rake db:create db:migrate db:test:prepare

# Start the server
> bundle exec rails s
```

Once you've performed the above actions, you can view the website at http://localhost:3000.
Start by creating a user for yourself and then consider using the rake tasks below to seed
additional test data.


## Run the Tests
-------------

```sh
> bundle exec rspec
```

Authors
-------

**Scott Robinson**
- http://github.com/SnareChops
 
**Forrest Phillips**
- https://github.com/FPhillips27
