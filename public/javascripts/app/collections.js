/* DO NOT MODIFY. This file was compiled Wed, 21 Dec 2011 23:03:25 GMT from
 * /Users/Timbo/Code/sandbox/backbone/u-owe-me/app/coffeescripts/u_owe/collections.coffee
 */

(function() {
  var Contracts, _ref,
    __hasProp = Object.prototype.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor; child.__super__ = parent.prototype; return child; };

  Contracts = (function(_super) {

    __extends(Contracts, _super);

    function Contracts() {
      Contracts.__super__.constructor.apply(this, arguments);
    }

    Contracts.prototype.model = app.Contract;

    return Contracts;

  })(Backbone.Collection);

  this.app = (_ref = window.app) != null ? _ref : {};

  this.app.Contracts = new Contracts;

}).call(this);
