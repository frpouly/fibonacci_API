# fibonacci_API

## Running the service :

### Locally with Rack

If you already have a Ruby environment and bundler gem, you can run the application locally with :

``` bash
bunlde install
rackup &
```

Afterthat, you can access to the routes :
``` bash
curl -i localhost:3000/api/v1/fibonacci/${number}
```

### Using Docker

To be implemented

## Tests

I also implemented basic unit tests, you can run them with
```bash
rake
```
