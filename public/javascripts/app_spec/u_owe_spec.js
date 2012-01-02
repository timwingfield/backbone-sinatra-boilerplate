/* DO NOT MODIFY. This file was compiled Wed, 21 Dec 2011 21:51:41 GMT from
 * /Users/Timbo/Code/sandbox/backbone/u-owe-me/app/coffeescripts/u_owe_spec/u_owe_spec.coffee
 */

(function() {
  var app, _ref;

  app = (_ref = window.app) != null ? _ref : {};

  describe("Contract", function() {
    describe("new contract", function() {
      beforeEach(function() {
        return this.contract = new app.Contract({
          title: 'beer',
          amount: 5.95
        });
      });
      it("populates the title", function() {
        return expect(this.contract.get('title')).toEqual('beer');
      });
      it("populates paid with false by default", function() {
        return expect(this.contract.get('paid')).toEqual(false);
      });
      it("populates amount", function() {
        return expect(this.contract.get('amount')).toEqual(5.95);
      });
      return it("should not have a validation message", function() {
        return expect(this.contract.validate()).toBeUndefined;
      });
    });
    return describe("new contract without a title", function() {
      beforeEach(function() {
        return this.contract = new app.Contract;
      });
      return it("should return a validation message", function() {
        return expect(this.contract.validate()).toEqual("Title must not be blank");
      });
    });
  });

}).call(this);
