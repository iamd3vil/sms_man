# SmsMan (Work in Progress)

An Elixir library for sending sms with different providers. It is adapter based and inspired from the awesome [Bamboo](https://hex.pm/packages/bamboo) library.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `sms_man` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:sms_man, "~> 0.1.0"}]
    end
    ```

  2. Ensure `sms_man` is started before your application:

    ```elixir
    def application do
      [applications: [:sms_man]]
    end
    ```

