// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//   INSTRUCTIONS FOR SAFE CODING
// The javascript in this project employs namespacing.
//Before any other app specific js is loaded
//the namespace.js file is loaded.
// Create an application namespace in that file
// Add new js files to the scripts directory
// Add all functions to an appropriate subnamespace
// Create a namespaced init method for each page that needs initialization
// Insert code like that at the bottom of views/filberts/index to the bottom of the page to attach functions to dom elements

//= require jquery
//= require jquery_ujs
//= require jquery.flot
//= require jquery.flot.pie
// require turbolinks
//= require namespace
//= require_tree ./scripts

// disabled turbolinks so the javascript will execute without having to reload the page...