defmodule SmsMan.SmsSender do
  require Logger

  defmacro __using__(opts) do
    quote bind_quoted: [opts: opts] do

      def deliver_now(sms) do
        config = build_config()
        SmsMan.SmsSender.deliver_now(config.adapter, sms, config)
      end
      otp_app = Keyword.fetch!(opts, :otp_app)
      defp build_config, do: SmsMan.SmsSender.build_config(__MODULE__, unquote(otp_app))
    end
  end

  def deliver_now(adapter, sms = %SmsMan.SMS{}, config) do
    adapter.deliver(sms, config)
  end

  def build_config(sms_sender, otp_app) do
    otp_app
    |> Application.fetch_env!(sms_sender)
    |> Enum.into(%{})
    |> handle_config_adapter()
  end

  defp handle_config_adapter(base_config = %{adapter: adapter}) do
    adapter.handle_config(base_config)
  end
end
