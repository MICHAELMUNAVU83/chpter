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
         "https://api.chpter.co/v1/transactions",
         "123456")

```

## Documentation

[Hex Docs](https://hexdocs.pm/chpter/0.1.1/Chpter.html)

## AUuhor

[Michael Munavu](https://michaelmunavu.com)

## License

Chpter is released under [MIT License](https://github.com/appcues/exsentry/blob/master/LICENSE.txt)
