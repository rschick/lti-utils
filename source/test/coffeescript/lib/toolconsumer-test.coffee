config = require('../etc/toolconsumer.config')
should = require('should')
oauth = require('./oauth')
toolconsumer = require('./toolconsumer')
_ = require('underscore')

describe('toolconsumer', ->
	describe('request()', ->
		it('should return an option monad holding the response', (done) ->
			params = require('./toolparameters')
				.property('resource_link_id', '1234567890')
			context = require('./toolcontext')
				.property('consumerKey', config.consumerKey)
				.property('consumerSecret', config.consumerSecret)
				.property('host', config.host)
				.property('path', config.path)
				.property('port', config.port)

			toolconsumer.request(context, params).then((response) ->
				response.isSome.should.be.true
				done()
			)
		)
	)
)
