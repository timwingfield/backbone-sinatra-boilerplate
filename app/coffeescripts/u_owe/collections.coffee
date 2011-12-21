class Contracts extends Backbone.Collection
  model: app.Contract

@app = window.app ? {}
@app.Contracts = new Contracts
