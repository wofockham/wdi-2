# JS Templating with AJAX Lab
The goal of this lab is to implement a basic Handlebars.js template.  What you have to start with is a basic rails app that shows a list of countries, their abbreviation, and a flag.  Rendering all this data on page load can be inefficient, especially if there is a large dataset.  What can help server load is to acquire the data after page load using AJAX, template it using Handlebars.js, and append it to the DOM.

1. First, bundle install the app
2. Migrate and seed the database
1. Run the app and navigate to localhost:3000 to see what it looks like
3. Investigate the current templates and become familiar what exists
	* You should find an index.html.erb file that uses a partial to display the list of countries
	* You should find a home.js file that includes the JS event bindings and the empty named functions.
	* There should also be a number of support files (JS libraries, CSS files, and an image that serves as the flag sprite)
1. Implement the erb partial as a Handlebars template
2. Give the "Populate" and "All Data" buttons functionality
2. Implement the concept of "infinite scrolling" to dynamically load the page as a user scrolls down
3. As you scroll, the countries should populate until you reach the end.  Use your browsers inspector to investigate the network activity if you keep trying to scroll.  Refactor as necessary to mitigate any potential issues you identify.


###Bonus Exercise 1 (Handlebars conditional)
One of the parameters in the model is north_america.  This is a boolean value, defaulting to false.  When a country is in North America, add the class "na" to the &lt;p&gt; tag to show that country in bold red text.  This should be implemented in the country's Handlebars template.

###Bonus Exercise 2 (Event binding + AJAX)
Create a click event on each country element to find the date when that country was created in the database and display in an alert box with the country's id.

###Bonus Exercise 3 (DRY AJAX)
You should have already implemented the functionality for populating the entire page as well as piecemeal on window scroll (potentially the click event bonus exercise too).  Writing AJAX calls can be cumbersome especially as you add more options/parameters.  In order to remain DRY, rewrite some of your code to use one AJAX call.  This function should handle the necessary parameters, setup the AJAX call, and and implement a callback/handler function to call when the AJAX call finishes.  Perhaps also we need to be sure the callback is a valid function.
