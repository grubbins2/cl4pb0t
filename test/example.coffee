chai = require 'chai'
{expect} = require 'chai'
Helper = require 'hubot-test-helper'
helper = new Helper('../scripts')

chai.use require 'chai-things'

describe 'example', ->
  room = null

  before ->
    room = helper.createRoom()

  context 'user says hello to hubot', ->
    beforeEach ->
      room.user.say 'alice', '@hubot hello'
      room.user.say 'bob',   '@hubot hello'

    it 'should reply to user', ->
      expect(room.messages).to.include.something.that.deep.equals ["alice", "@hubot hello"]
      expect(room.messages).to.include.something.that.deep.equals ['hubot', '@alice hello']
      expect(room.messages).to.include.something.that.deep.equals ['bob',   '@hubot hello']
      expect(room.messages).to.include.something.that.deep.equals ['hubot', '@bob hello']

  context 'user says hi to hubot', ->
    beforeEach ->
      room.user.say 'alice', '@hubot hi'
      room.user.say 'bob',   '@hubot hi'
      room.user.say 'alice', '@hubot hello'
      room.user.say 'bob',   '@hubot hello'

    it 'should reply to user', ->
      expect(room.messages).to.include.something.that.deep.equals ["alice", "@hubot hi"]
      expect(room.messages).to.include.something.that.deep.equals ['hubot', '@alice hi']
      expect(room.messages).to.include.something.that.deep.equals ['bob',   '@hubot hi']
      expect(room.messages).to.include.something.that.deep.equals ['hubot', '@bob hi']
      expect(room.messages).to.include.something.that.deep.equals ["alice", "@hubot hello"]
      expect(room.messages).to.include.something.that.deep.equals ['hubot', '@alice hello']
      expect(room.messages).to.include.something.that.deep.equals ['bob',   '@hubot hello']
      expect(room.messages).to.include.something.that.deep.equals ['hubot', '@bob hello']
