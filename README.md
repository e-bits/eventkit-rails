# EventKit Rails

EventKit Rails is a Ruby on Rails port of [EventKit](https://github.com/sendgrid/eventkit), an open source project to receive notifications for [SendGrid's Event Webhook](https://sendgrid.com/docs/API_Reference/Webhooks/event.html). This project can be deployed to a rails server, or quickly deployed to [Heroku](http://heroku.com) using the "Deploy Heroku Button" (see below).

# Tech Stack

EventKit Rails uses [Ruby on Rails](http://rubyonrails.org) for the backend, including ActiveRecord and Postgres for the production database. The backend is API driven, which is used by the [EmberJS](http://emberjs.com) frontend.  The frontend also uses [Ember Data](http://emberjs.com/guides/models/) to handle the communication between the frontend and backend.

# Deploying To Heroku

You can easily deploy EventKit Rails to your Heroku account with a few clicks using the button below. If you don't currently have a Heroku account, you can [set one up for free](https://www.heroku.com/pricing) on their website.

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

# Deploying with Docker Compose

## Prerequisites
Update docker-compose
```
curl -L https://github.com/docker/compose/releases/download/1.12.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
```
If you get `Permission denied` try first `sudo -i`

## Start with Docker compose
```
git clone https://github.com/e-bits/eventkit-rails.git && cd eventkit-rails

# copy example environment file and adapt it to your needs
cp .env.example .env
vi .env

docker-compose up -d
```

## Database config
### Import data test
```
docker-compose run --rm web bundle exec rake db:seed
```

### Create tables
```
docker-compose run --rm web bundle exec rake db:migrate
```
