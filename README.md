Simple Rails 4 app (out of the box) with minimum needed to demonstrate the issues.  

Ruby 2.0.0  
Rails 4.0.0  

Additional Gems: gon  
Charting Library: Flot  

Two simple models:  
* Filbert  
* Flange  

The index views for each have a 'click here' link and some hookups to display some Flot charts.  
* Something is amiss with the javascript and the json feeding the pie chart.  

Issue 1: Only one js.coffee file will function. Removing one will allow the other to be 'recognized'  
Issue 2: The Flot pie chart recognizes the data but not the labels with json formatted data  
Issue 3: Had to disable turbolinks (application.js) in order to allow javascript to execute with manually reloading the page  
