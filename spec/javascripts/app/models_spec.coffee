#app = window.app ? {}

describe "app.something", ->
  Given -> @val = true
  Then -> @val == true
  Then -> "bob".legnth == 5
