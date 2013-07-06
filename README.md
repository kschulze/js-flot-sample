Simple Rails 4 app with minimum needed to demonstarte the issues.

Ruby 2.0.0
Rails 4.0.0

Addtional Gems: gon
Charting Library: Flot

Issue 1: Only one js.coffee file will function. Removing one will allow the other to be 'recognized'
Issue 2: The Flot pie chart recognizes the data but not the labels with json formatted data
Issue 3: Had to disable turbolinks (application.js) in order to allow javascript to execute with manually reloading the page
