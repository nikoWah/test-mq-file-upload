# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# Setting up RabbitMQ
Install RabbitMQ to get rabbitmq-server, rabbitmqadmin, rabbitmqctl, etc.
`brew install rabbitmq`

Export this path to your source file in order to run it directly in the terminal.
`PATH=$PATH:/usr/local/sbin`

Add the hutch gem and bundle install with it.

Run rabbitmq-server to start it up. Look at [RabbitMQ Admin Page](http://localhost:15672/) and check that it is running. The default username is **guest** and default password is **guest**. The default values to connect to hutch is in hutch_config.yml.

Start Hutch.
`bundle exec hutch --config=hutch_config.yml`

Classes which included Hutch Consumer will create the consumer and the queue. You could check it in [RabbitMQ Admin Page](http://localhost:15672/).
`include Hutch::Consumer`
