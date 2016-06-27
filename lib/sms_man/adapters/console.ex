defmodule SmsMan.Adapters.Console do
  @behaviour SmsMan.Adapter
  require Logger

  def deliver(%SmsMan.SMS{body: body, from: from, to: to}, _config) do
    Logger.debug "Got #{body} from #{from} to #{to}"
  end

  def handle_config(config = %{adapter: __MODULE__}) do
    config
  end
end
