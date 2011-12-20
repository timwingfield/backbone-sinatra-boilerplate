app = window.app ? {}

describe "Owed", ->
  
  describe "new owed", ->
    beforeEach ->
      @owed = new app.Owed
        title: 'beer',
        amount: 5.95

    it "populates the title", ->
      expect(@owed.get('title')).toEqual 'beer'

    it "populates paid with false by default", ->
      expect(@owed.get('paid')).toEqual false

    it "populates amount", ->
      expect(@owed.get('amount')).toEqual 5.95

    it "should not have a validation message", ->
      expect(@owed.validate()).toBeUndefined

  describe "new owed without a title", ->
    beforeEach ->
      @owed = new app.Owed
      
    it "should return a validation message", ->
      expect(@owed.validate()).toEqual "Title must not be blank"
