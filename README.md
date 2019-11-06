# Oystercard

## Chapter 1
- [x] construct a valid Gemfile
- [x] specify a correct source for gems
- [x] specify the latest Ruby version
- [x] add the `rspec` gem to ‘test’ and ’development’ groups
- [x] commit only this Gemfile

## Chapter 2
- [x] Generate conventional files (helper and config) for an RSpec project using a command-line option of the rspec executable file
- [x] Follow RSpec naming convention for files and folders
- [x] Create a test file for the Oystercard class without any tests but with a `describe` block (doesn't exist yet)

## Chapter 3
- [x] Write down the type of error in the issue comments
- [x] Write down the file path where the error happened
- [x] Write down the line number of the error
- [x] Use the Ruby Documentation to find out what the error means
- [x] Suggest one way of solving the error

## Chapter 4
- [x] Write up a plan for how you will interact with your code and manually test in IRB.
- [x] Create a unit test for the `Oystercard` class
- [x] Write a failing test that checks that a new card has a `balance`
- [x] Write code that will make this test pass
- [x] Now refactor by setting the balance in initialize using an instance variable
- [x] Remove the balance method entirely and replace with an attr_reader

## Chapter 5
- [x] Write up a plan for how you will interact with your code and manually test in IRB.
  - IRB
  - require './lib/oystercard.rb'
  - oystercard = Oystercard.new
  - oystercard.top_up
- [x] Write a test for the `top_up` method
- [x] Make sure the test fails before implementing the method
- [x] Implement the method to make the test pass

## Chapter 6
- [x] Write up a plan for how you will interact with your code and manually test in IRB.
  - irb
  - require './lib/oystercard.rb'
  - card = Oystercard.new
  - card.top_up(91)
  - should throw error
- [x] Write a test that checks the `top_up` method throws an exception if the new balance would exceed the limit.
- [x] Use a constant to store the limit
- [x] Implement the limit in the top_up method. Use an inline `if` statement to check if the limit would be exceeded
- [x] Make the error message include the limit value
- [x] Use interpolation to keep your code DRY

## Chapter 7
- [x] Write up a plan for how you will interact with your code and manually test in IRB.
  - IRB
  - require './lib/oystercard.rb'
  - card = Oystercard.new
  - card.method
- [x] Write a test for the `deduct` method, see it fail
- [] Implement the method, see the test pass

## Chapter 8
- [ ] Write up a plan for how you will interact with your code and manually test in IRB.
- [ ] Write tests for `in_journey?`, `touch_in` and `touch_out`
- [ ] Write implementation of these methods that will make the tests pass
- [ ] Use an instance variable to track whether the card is in use
- [ ] Use an RSpec predicate matcher to check if the card is in use
- [ ] Use boolean values to store the state of the card

## Chapter 9
- [ ] Write up a plan for how you will interact with your code and manually test in IRB.
- [ ] Write a test that checks that an error is thrown if a card with insufficient balance is touched in
- [ ] Write the implementation
- [ ] Update existing tests, if necessary, to make sure they still pass
- [ ] Refactor to remove any magic numbers and replace with a constant

## Chapter 10
- [ ] Write a test that uses `expect {}.to change{}.by()` syntax to check that a charge is made on touch out.
- [ ] Update the `touch_out` method to make the test pass
- [ ] Make '#deduct' a private method
- [ ] Keep the code DRY
