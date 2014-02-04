'use strict'

describe 'Service: todos', () ->

  # load the service's module
  beforeEach module 'todotwoApp'

  # instantiate service
  todos = {}
  beforeEach inject (_todos_) ->
    todos = _todos_

  it 'should do something', () ->
    expect(!!todos).toBe true
