// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery3
//= require loading_screen
//= require jquery_ujs
//= require turbolinks
// require_tree .

$(document).on("turbolinks:click", function(){
  location.reload();
});

$(function () {
  $('#open').click(
  	function () {
    	$("#door").animate({"bottom": "+600px",opacity: 1}, "slow");
});});

$(function () {
  $('#close').click(
  	function () {
    	$("#door").animate({"bottom": "-500px",opacity: 1}, "slow");
});});

$(document).on("turbolinks:click", function(){
  $("#spinner").show();
});

$(document).on("turbolinks:load", function(){
  $("#spinner").hide();
});

