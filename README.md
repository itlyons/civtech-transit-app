# Welcome to the Bus Scout!
A rails application intended to allow users to make reports about transit stops in Chicago


This is development stage 1 of 2. [(Click here for stage 2)][https://github.com/kochandrea/bus-scout].  Using the search bar, a citizen may lookup their bus stop by using a street name.  Let's see what happens when we search for 'Cornell'.

<img width="786" alt="Screen Shot 2019-06-11 at 6 29 44 PM" src="https://user-images.githubusercontent.com/35736047/59314439-0092d680-8c7b-11e9-9458-c102a79c3f44.png">

Once they have entered a search, any bus stop with that street name will be returned and they can select their stop from the list.  

<img width="552" alt="Screen Shot 2019-06-11 at 6 30 38 PM" src="https://user-images.githubusercontent.com/35736047/59314445-0e485c00-8c7b-11e9-97a5-301e09748457.png">

To verify that they have the correct stop, a google map image will populate.  At the bottom of the page, they eventually will be able to view current reports for that bus stop as well as submit a report of their own. 

<img width="604" alt="Screen Shot 2019-06-11 at 6 36 06 PM" src="https://user-images.githubusercontent.com/35736047/59314458-1b654b00-8c7b-11e9-86b2-689668cce98d.png">







### To demo:

After cloning the repo and changing into the directory,
1) Install Gemfile dependencies
```
$ bundle install
```
2) Initialize and seed the database
```
$ rake db:schema:load
$ bundle exec rake load_bus_stops:load_stops
```
3) Start rails server
```
$ rails server
```
