app = window.app ? {}

describe "Owed", ->
  
  describe "new owed", ->
    beforeEach ->
      @owed = new app.Owed
        title: 'beer' 

    it "populates the title", ->
      expect(@owed.get('title')).toEqual 'beer'


