defmodule SmsMan.Adapter do

  @callback deliver(%SmsMan.SMS{}, %{}) :: any
  @callback handle_config(map) :: map
end
