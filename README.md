# Shopping Cart API
This is a toy API for example purposes built on Sinatra <http://sinatrarb.com/intro.html>. The API simulates a shopping cart where the user can create a new shopping cart, get the items in a shopping cart by id, update items in a shopping cart and delete a shopping cart.

## Installation
Clone this repo to your development enviroment.  
```
$ git clone https://github.com/seandevs/shopping_cart_api.git
```

Move into the directory.
```
$ cd shopping_cart_api
```

Install the required gems.
```
$ bundle install
```

## Usage

Start the sinatra server.
```
$ ./server.rb # or ruby server.rb
```

You can access the url through the browser by going to <localhost:4567> or you can make requests using the below. Note that there is no error handling in this code so act responsibily.

```
# GET info
$ curl --location --request GET 'localhost:4567/'

# GET cart by id (replace #{id} with an integer value representing index)
$ curl --location --request GET 'localhost:4567/cart/#{id}'

# POST a new cart
$ curl --location --request POST 'localhost:4567/cart'

# PUT (update) a cart by item (replace #{id} with an integer value representeting index, #{item} with the name of an item e.g "soda", "milk", "hotdogs", "mustard", replace #{quantity} with an integer value)
$ curl --location --request PUT 'localhost:4567/cart/#{id}?#{item}=#{quantity}'

# DELETE cart by id (replace #{id} with an integer value representing index)
$ curl --location --request DELETE 'localhost:4567/cart/#{id}'
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/seandevs/shopping_cart_api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/seandevs/shopping_cart_api/CODE_OF_CONDUCT.md).

## License

This code is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Scheduler project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/seandevs/shopping_cart_api/CODE_OF_CONDUCT.md).

