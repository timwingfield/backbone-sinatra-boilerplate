/* DO NOT MODIFY. This file was compiled Fri, 30 Dec 2011 18:21:37 GMT from
 * /Users/Timbo/Code/sandbox/backbone/u-owe-me/app/coffeescripts/u_owe/views.coffee
 */

(function() {
  var __hasProp = Object.prototype.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor; child.__super__ = parent.prototype; return child; },
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  jQuery(function() {
    var AppView, NewContractView, TitleView, _ref;
    AppView = (function(_super) {

      __extends(AppView, _super);

      function AppView() {
        AppView.__super__.constructor.apply(this, arguments);
      }

      AppView.prototype.el = '#wrap';

      AppView.prototype.initialize = function(options) {
        return this.subviews = [new TitleView, new NewContractView];
      };

      AppView.prototype.render = function() {
        var subview, _i, _len, _ref;
        $(this.el).empty();
        _ref = this.subviews;
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          subview = _ref[_i];
          $(this.el).append(subview.render().el);
        }
        return this;
      };

      return AppView;

    })(Backbone.View);
    TitleView = (function(_super) {

      __extends(TitleView, _super);

      function TitleView() {
        TitleView.__super__.constructor.apply(this, arguments);
      }

      TitleView.prototype.template = _.template($('#title-template').html());

      TitleView.prototype.render = function() {
        $(this.el).html(this.template());
        return this;
      };

      return TitleView;

    })(Backbone.View);
    NewContractView = (function(_super) {

      __extends(NewContractView, _super);

      function NewContractView() {
        this.hideWarning = __bind(this.hideWarning, this);
        this.render = __bind(this.render, this);
        NewContractView.__super__.constructor.apply(this, arguments);
      }

      NewContractView.prototype.tagName = 'form';

      NewContractView.prototype.template = _.template($('#new-contract-template').html());

      NewContractView.prototype.events = {
        'keypress #new-contract': 'saveOnEnter',
        'focusout #new-contract': 'hideWarning'
      };

      NewContractView.prototype.render = function() {
        $(this.el).html(this.template());
        this.hideWarning();
        return this;
      };

      NewContractView.prototype.saveOnEnter = function() {
        if (event.keyCode === 13) {
          event.preventDefault();
          return this.flashWarning();
        }
      };

      NewContractView.prototype.hideWarning = function() {
        alert('hello');
        $('#warning').hide();
        return $('#new-contract-container').removeClass('warning');
      };

      NewContractView.prototype.flashWarning = function() {
        $('#new-contract-container').addClass('warning');
        return $('#warning').show();
      };

      return NewContractView;

    })(Backbone.View);
    this.app = (_ref = window.app) != null ? _ref : {};
    return this.app.AppView = AppView;
  });

}).call(this);
