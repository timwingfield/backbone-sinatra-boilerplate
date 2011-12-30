@app = window.app ? {}

jQuery ->
  a = new app.AppView
  a.render()
  #c = new @app.Contract({"name":"Brendan"})
  #@app.Contracts.add(c)
