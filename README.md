# Chpter

Phoenix(Elixir) wrapper for chpter API implimentatio for Mpesa Payments in Kenya.

## Installation

The package can be installed
by adding `chpter` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:chpter, "~> 0.1.1"}
  ]
end
```

Run `mix deps.get` to fetch from Hex

## Usage

This is broken down into two parts:

### 1. Initiation

There is a function called `initiate_payment` that takes in the following parameters:

- `api_key` - Your Chpter API key
- `phone_number` - The phone number to send the payment request to
- `name` - The name of the person to send the payment request to
- `email` - The email of the person to send the payment request to
- `amount` - The amount to be paid
- `callback_url` - The callback url to be used by Chpter to send the payment request response to
- `transaction_reference` - The reference to be used for the payment request

```elixir
 iex> Chpter.initiate_payment(
         "pk_4aff02227456f6b499820c2621ae181c9e35666d25865575fef47622265dcbb9",
          "254740769596",
     "Michael Munavu",
      "michaelmunavu83@gmail.com",
      1,
     "Nairobi",
      "https://720a-102-135-173-116.ngrok-free.app/api/transactions",
      "transaction_123456"

      )

```

### 2. Checking Transaction Status

There is a function called `check_for_payment` that takes in the following parameters:

- `api_endpoint` - The Chpter API endpoint where all the transactions are stored
- `transaction_reference` - The reference to be used for the payment request

```elixir
 iex> Chpter.check_for_payment(
  "123456",
         "https://api.chpter.co/v1/transactions",
         )

```

## Creating A Callback url endpoint to use with chpter in elixir

[Medium Article](https://medium.com/@michaelmunavu83/creating-a-callback-url-endpoint-for-chpter-api-with-elixir-4c9a5ca44f43)
[Github Repository](https://github.com/MICHAELMUNAVU83/chpter_callback_url)

## Implimenting Chpter in your Phoenix LiveView Article and Repository.

[Medium Article](https://medium.com/@michaelmunavu83/using-chpter-api-for-mpesa-payments-in-elixir-and-phoenix-live-view-9406ac4d1039)
[Github Repository](https://github.com/MICHAELMUNAVU83/chpter_phoenix)

## Hex Documentation

[Hex Docs](https://hexdocs.pm/chpter/0.1.1/Chpter.html)

## Author

[Michael Munavu](https://michaelmunavu.com)

## License

Chpter is released under [MIT License](https://github.com/appcues/exsentry/blob/master/LICENSE.txt)
