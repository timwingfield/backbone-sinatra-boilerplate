app = window.app ? {}

describe "Contracts", ->
  
  describe "new contracts collection", ->
    beforeEach ->
      @model = new app.Contract({name: "name"})
      @contracts = app.Contracts
      @contracts.add(@model)

    it "should contain a model", ->
      expect(@contracts.length).toEqual(1)
