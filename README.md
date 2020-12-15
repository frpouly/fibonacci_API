# fibonacci_API

## Routes :

* `/` : a tiny webpage where you will be able to interrogate the API
* `/api/v1/fibonacci/number` : returns the result of Fibonacci(number)
* `/api/v1/inverted_fibonacci/number` : returns an integer n so that n = Fibonacci(number) number is in the Fibonacci sequence

## Running the service :

### Locally with Rack

If you already have a Ruby environment and bundler gem, you can run the application locally with :

``` bash
bunlde install
rackup -p 3000 &
```

Afterthat, you can access to the routes :
``` bash
curl -i localhost:3000/api/v1/fibonacci/12
curl -i localhost:3000/api/v1/inverted_fibonacci/144
```
And the small index (localhost:3000/)[localhost:3000]

### Using Docker

```bash
docker-compose up -d
```

And then you should be able to access to the site :
``` bash
curl -i localhost:3000/api/v1/fibonacci/12
curl -i localhost:3000/api/v1/inverted_fibonacci/144
```

## Tests

I also implemented basic unit tests, you can run them with
```bash
rake
```
