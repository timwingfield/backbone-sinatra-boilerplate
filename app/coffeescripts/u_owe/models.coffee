class Contract extends Backbone.Model
  defaults:
    paid: false

  validate: (attributes) ->
    mergedAttributes = _.extend(_.clone(@attributes), attributes)
    if !mergedAttributes.title or mergedAttributes.title.trim() == ''
      return "Title must not be blank"

@app = window.app ? {}
@app.Contract = Contract
