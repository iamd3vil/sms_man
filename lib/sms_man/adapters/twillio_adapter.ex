defmodule SmsMan.Adapters.Twillio do
  @behaviour SmsMan.Adapter

  require Logger
  alias SmsMan.SMS

  def deliver(%SMS{from: from, to: to, body: body, opts: %{}}, %{account_sid: account_sid, auth_token: auth_token}) do
    send_sms(from, to, body, auth_token, account_sid)
  end

  def handle_config(base_config = %{adapter: __MODULE__, account_sid: _account_sid, auth_token: _auth_token}) do
    base_config
  end

  defp send_sms(from, to, body, _auth_token, _account_sid) do
    Logger.debug "Sending sms from: #{from}, body: #{body}, to: #{to}"
    
  end
end
