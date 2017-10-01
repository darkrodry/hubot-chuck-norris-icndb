Helper = require('hubot-test-helper')
chai = require 'chai'

expect = chai.expect

helper = new Helper('../src/chuck-norris-icndb.coffee')

describe 'chuck-norris-icndb', ->
  beforeEach ->
    @room = helper.createRoom()

  afterEach ->
    @room.destroy()
