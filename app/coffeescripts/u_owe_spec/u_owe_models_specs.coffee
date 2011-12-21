app = window.app ? {}

describe "Contract", ->
  
  describe "new contract", ->
    beforeEach ->
      @contract = new app.Contract
        title: 'beer',
        amount: 5.95

    it "populates the title", ->
      expect(@contract.get('title')).toEqual 'beer'

    it "populates paid with false by default", ->
      expect(@contract.get('paid')).toEqual false

    it "populates amount", ->
      expect(@contract.get('amount')).toEqual 5.95

    it "should not have a validation message", ->
      expect(@contract.validate()).toBeUndefined

  describe "new contract without a title", ->
    beforeEach ->
      @contract = new app.Contract
      
    it "should return a validation message", ->
      expect(@contract.validate()).toEqual "Title must not be blank"
