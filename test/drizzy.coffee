chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'hubot-drizzy', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/drizzy')(@robot)

  describe 'quotes', ->
    it 'registers a respond listener for "drizzy quote me"', ->
      expect(@robot.respond).to.have.been.calledWith(/drizzy quote me\b/i)

