Heroku link: https://host-tracker.herokuapp.com/

# Guest Tracker App

This Guest Tracker enables a user to 1) login, 2) add and edit guest information using a form, 3) 'jump to' users in the list, 4) select entries for adding to clipboard (for Export to Telegram).

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

* Ruby 2.4.1
* Rails 5.1.4

### Installing

Clone the repository
```
git clone https://github.com/kennethteh90/host-tracker.git
```

Install required gems
```
bundle install
```

Create and configure the database
```
rake db:create db:migrate
```

Create a user in rails console (registerable is disabled for security reasons)
```
$ User.create(username: "test", email: "test@example.com", password: "test123")
```

## Authors

* **Kenneth Teh** - [Kenneth](https://github.com/kennethteh90)
