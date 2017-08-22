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
  
  
  
