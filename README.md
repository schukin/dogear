DogEar
======

A ruby client for [DogEar](https://dogear.io/).

See [DogEar API docs](https://dogear.io/api) for your API key.

## Notifying a server

```ruby
client = DogEar::Client.new(API_KEY)
client.notify(server_id, 'My custom notification message')
```