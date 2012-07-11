# StatusBoard

Super simple and easy to setup StatusBoard for monitoring the state of your servers.

Supported checkers:

* PING 
* HTTP
* Many others in development

## Installation

Clone the repository and install the dependencies:

	$ git clone https://github.com/lukefx/statusboard.git
	$ cd statusboard
	$ bundle

Then run the migrations:

	$ rake db:migrate

Finally, deploy it or wrap it inside a war to deploy with JRuby:

	$ gem install warbler
	$ warble war


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
