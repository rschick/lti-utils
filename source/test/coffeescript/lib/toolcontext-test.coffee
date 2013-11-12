should = require('should')
toolcontext = require('./toolcontext')
_ = require('underscore')

describe('toolcontext', ->
	describe('consumerKey', -> it('should exist', -> _.has(toolcontext, 'consumerKey').should.be.true))
	describe('consumerSecret', -> it('should exist', -> _.has(toolcontext, 'consumerSecret').should.be.true))
	describe('host', -> it('should exist', -> _.has(toolcontext, 'host').should.be.true))
	describe('path', -> it('should exist', -> _.has(toolcontext, 'path').should.be.true))
	describe('port', -> it('should exist', -> _.has(toolcontext, 'port').should.be.true))
)