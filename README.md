## Tech Specs:
- Ruby 2.3.3
- Database: sqlite / seed file (with few transactions merchants and consumers.)
- Framework: Rails 5.1.2
- Test Framework - minitest
- Zip code api - [Zip Code API](https://www.zipcodeapi.com/API).

## Commands Used
```
  rails new dist-cal
  rvm current
  rvm gemset use ruby-2.3.3@distance-calculator
  rails g controller distances index
  rake test
```
### Quick Information
- Created an application which allows a partner to have the ability to receive two zip codes and provide the distance between them" 
- Used zip code api https://www.zipcodeapi.com/API
- Utilize TDD
