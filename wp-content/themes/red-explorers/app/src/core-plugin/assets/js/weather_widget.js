jQuery(document).ready(function ($) {
  const formWidget = $('#rmbt-weather-widget');

  if (!formWidget) {
    return;
  }

  const inputCity = $('#city');

  $('#rmbt-weather-widget-submit').on('click', function (e) {
    e.preventDefault();
    const widgetBlock = $('.widget_weather_widget');
    let widgetResult;

    if ($('.widget-result').length === 0) {
      widgetResult = $('<div class="widget-result"></div >');
    } else {
      widgetResult = $('.widget-result').html('');
    }

    $.ajax({
      url: redExplorersAppData.ajaxUrl,
      type: 'post',
      data: {
        action: 'get_weather',
        city: inputCity.val().toLowerCase(),
      },
      success: function (response) {
        try {
          const dataWeather = JSON.parse(response.data);
          widgetResult.html(`<h3>Weather in ${dataWeather.name}</h3>
              <p>Temperature: ${dataWeather.main.temp}°C</p>
              <p>Weather: ${dataWeather.weather[0].description}</p>
              <p>Humidity: ${dataWeather.main.humidity}%</p>
              <p>Wind Speed: ${dataWeather.wind.speed} m/s</p>`);
        } catch (error) {
          widgetResult.html(`<h3 class='widget-error'>Error</h3>`);
        }
        widgetBlock.append(widgetResult);
      },
      error: function (response) {
        console.log('response = ', response);
      },
    });
  });

  const data = {
    coord: { lon: 30.5167, lat: 50.4333 },
    weather: [{ id: 800, main: 'Clear', description: 'clear sky', icon: '01d' }],
    base: 'stations',
    main: {
      temp: 13.18,
      feels_like: 12.98,
      temp_min: 12.54,
      temp_max: 13.18,
      pressure: 1013,
      humidity: 93,
      sea_level: 1013,
      grnd_level: 997,
    },
    visibility: 10000,
    wind: { speed: 0.89, deg: 231, gust: 2.24 },
    clouds: { all: 0 },
    dt: 1728456132,
    sys: { type: 2, id: 2003742, country: 'UA', sunrise: 1728447052, sunset: 1728487146 },
    timezone: 10800,
    id: 703448,
    name: 'Kyiv',
    cod: 200,
  };
});
