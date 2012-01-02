/* DO NOT MODIFY. This file was compiled Wed, 21 Dec 2011 21:51:40 GMT from
 * /Users/Timbo/Code/sandbox/backbone/u-owe-me/app/coffeescripts/u_owe/models.coffee
 */

(function() {
  var Contract, _ref,
    __hasProp = Object.prototype.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor; child.__super__ = parent.prototype; return child; };

  Contract = (function(_super) {

    __extends(Contract, _super);

    function Contract() {
      Contract.__super__.constructor.apply(this, arguments);
    }

    Contract.prototype.defaults = {
      paid: false
    };

    Contract.prototype.validate = function(attributes) {
      var mergedAttributes;
      mergedAttributes = _.extend(_.clone(this.attributes), attributes);
      if (!mergedAttributes.title || mergedAttributes.title.trim() === '') {
        return "Title must not be blank";
      }
    };

    return Contract;

  })(Backbone.Model);

  this.app = (_ref = window.app) != null ? _ref : {};

  this.app.Contract = Contract;

}).call(this);
