require 'telegram/bot'
require 'forecast_io'
ForecastIO.api_key = '4e47c04f26c4c84eb507f2215cd9b287'
token = '698880021:AAFeMIsjQMx23DrI7_5QGK_OktLgC_HmQsc'
forecast = ForecastIO.forecast(50.450418, 30.523541, params: { lang: 'ru', units: 'si' })
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.sendMessage(chat_id: message.chat.id, text: "Привет! Погода в Киеве сейчас: #{forecast.currently.summary}. Температура воздуха: #{forecast.currently.temperature}'C.Чтобы повторить запрос нажми /start")
    end
end
end

