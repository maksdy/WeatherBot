require 'forecast_io'
ForecastIO.api_key = '4e47c04f26c4c84eb507f2215cd9b287'
forecast = ForecastIO.forecast(50.450418, 30.523541, params: { lang: 'ru', units: 'si' })

puts  "#{forecast.daily.summary}" 
