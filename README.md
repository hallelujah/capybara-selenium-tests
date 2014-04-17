# Capybara Selenium Tests

Different ways to make selenium tests in ruby with capybara
We use [capybara](https://github.com/jnicklas/capybara) for its cool DSL and the easy integration with selenium and browsers.


## Read the code in each directories

Here is how you will use selenium on the different syntax of the different frameworks:

* Test::Unit (located in **test** directory)
* RSpec (located in **spec** directory)
* MiniTest (located in **minitest** directory):
  * Test::Unit syntax (located in **minitest/test** directory)
  * Spec syntax (located in **minitest/spec** directory)

## Setup


Install gems with bundler

```
  bundle install
```

Check which tasks are available

```
  rake -T
```

Run one of the following

```
  rake default   # Run tests against RSpec by default
  rake minispec  # Run tests against MiniTest Spec syntax
  rake minitest  # Run tests against MiniTest Test::Unit syntax
  rake spec      # Run RSpec code examples
  rake test      # Run tests against Test::Unit
```
