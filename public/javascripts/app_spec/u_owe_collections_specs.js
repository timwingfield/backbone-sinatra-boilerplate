/* DO NOT MODIFY. This file was compiled Thu, 22 Dec 2011 04:01:42 GMT from
 * /Users/Timbo/Code/sandbox/backbone/u-owe-me/app/coffeescripts/u_owe_spec/u_owe_collections_specs.coffee
 */

(function() {
  var app, _ref;

  app = (_ref = window.app) != null ? _ref : {};

  describe("Contracts", function() {
    return describe("new contracts collection", function() {
      beforeEach(function() {
        this.model = new app.Contract({
          name: "name"
        });
        this.contracts = app.Contracts;
        return this.contracts.add(this.model);
      });
      return it("should contain a model", function() {
        return expect(this.contracts.length).toEqual(1);
      });
    });
  });

}).call(this);
