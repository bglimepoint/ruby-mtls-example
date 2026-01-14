# Example using mTLS in a Ruby/Puma server

Running the server: `bundle exec puma`

Making a request: `curl https://testing.local.gd:9292 -k --cert testing.local.gd-client.pem --key testing.local.gd-client-key.pem`

The server shows some cert details, and the response is some random field from the client cert.
