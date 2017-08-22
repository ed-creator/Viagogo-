## Viagogo Coding Challenge
[![Coverage Status](https://coveralls.io/repos/github/edwardwardward/Viagogo-/badge.svg?branch=master)](https://coveralls.io/github/edwardwardward/Viagogo-?branch=master)
[![Build Status](https://travis-ci.org/edwardwardward/Viagogo-.svg?branch=master)](https://travis-ci.org/edwardwardward/Viagogo-)

A simple ruby app that when given a pair of coordinates returns the 5 nearest events and the cheapest ticket price for each event, the distance and the coordinates of said event.


### The Task

* The program should randomly generate seed data.
* The program should operate in a world that ranges from -10 to +10 (Y axis), and -10 to +10 (X axis).
* The program should assume that each co-ordinate can hold a maximum of one event.
* Each event has a unique numeric identifier (e.g. 1, 2, 3).
* Each event has zero or more tickets.
* Each ticket has a non-zero price, expressed in US Dollars.
* The distance between two points should be computed as the Manhattan distance.

### To run the app

  If bundle isn't intalled yet run brew ```brew install bundle``` before bundle install.

  ```
  $ git clone https://github.com/edwardwardward/Viagogo-.git
  $ cd Viagogo-
  $ bundle install
  $ ruby app.rb
  ```
  
  Inside the terminal the app will promt you:
  
  ```
  Please input Coordinates
  ```
  
  enter your coordinates, eg.:
  
  ```
  -3, 7
  ```
  
  The app will then display the relevant information, e.g.:
  
  ```
  Event Number: 4 $47, Distance: 2 at coordinates [-2, 8]
  Event Number: 6 $25, Distance: 6 at coordinates [1, 9]
  Event Number: 8 $4, Distance: 6 at coordinates [-9, 7]
  Event Number: 5 $15, Distance: 8 at coordinates [5, 7]
  Event Number: 2 $10, Distance: 8 at coordinates [4, 6]
  ```
  
  ### My Approach
  
Given the reqiurements I decided to split the app into it's largest clear component parts: Event, Ticket and Events -  each of these formed a class that would be the basis for the app. 
  
  #### Event
  
  The Event class is initialized with an id, and a set of coordinates, it is also holds tickets and has a method that returns the  
  
  #### Ticket
  
  The Ticket class is initialized with a price and an event id which links it to the event it belongs to. There is a method for returning the price in a readable format. 

  #### Events

The Events class is responsible for holding a pool of Events(and through Events, Tickets). It's initialized with an event list as an empty array. The class has methods for adding events, generating random events and retriving the 5 closest events. There is also a private method that checks if a event is a dupliacte (has the same coordinates of an existing event in the event list) - this is used inside the add event method and blocks the event if it is in fact a duplicate. 

  #### App

In order to run the app a further app.rb is used. It creates a new instance of Events, populates the Events instance with 10 events and adds 5 tickets to each of those events(method: set_up). It then asks the user for an input and parses that input into x, y coordinates (e.g. [2,4])(method: user_choice). Finally the app checks the manhatten distance of each event with the user inputed coordinates and returns the closest 5 events and their relevant output(method: top_five_output).

#### Supporting multiple events at the same location?

Currently the app does not support multiple events at the same location. There is a simple way enable this:

* Remove the `duplicate_event_check?` from inside the `add_event` method in the Events Class - so that `add_event` is now:
  `def add_event(event)
    event_list << event 
  end`

#### working with a much larger world size?

Currently the app is not equiped to work with a very large world size, there are several issue I would address:

* The gird size is currently limited to -10..10, adapting this is a simple fix. The Event Class has the code:
    `raise ("cordinates must be within range") if 10 > y && y < -10
    raise ("cordinates must be within range") if 10 > x && x < -10`
  to increase the limits of the world size inrease the 10's to a larger number.   

* Assuming a world size increase also leads to more events being added calculating the manhtten distance may also be an issue. The manhatten distance is calculated through cycling all events in the event list - it would be better to have this precalculated and stored for coordinates so that calculation would not have to be done at the time the user interacts with the program - events would simply be sorted and the top ones returned. 

### Tests

To run tests:

```
$ rspec
```
