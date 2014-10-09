var pjs;

function startPjs() {
  pjs = Processing.getInstanceById('sketch');
  if(pjs == undefined) {
    setTimeout(startPjs, 200);
  } else {
    $.ajax({
      url: 'https://api.forecast.io/forecast/PUT-YOUR-KEY-HERE/-19.8157,-43.9542',
      dataType: 'jsonp',
      success: function(data) {
        pjs.updateWind(data.currently.windBearing, data.currently.windSpeed);
      }
    });
  }
}

$(function () {
  startPjs();
});
