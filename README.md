# Processing Lecture

The code used in the Processing Lecture which took place at [UFMG](http://www.ufmg.br) on October 8th 2014.

## Setup

### Forecast.io

Register and get an API key at [forecast.io](https://developer.forecast.io/register). Then edit [main.js](public/main.js), replacing `PUT-YOUR-KEY-HERE` with yours.

```javascript
$.ajax({
  url: 'https://api.forecast.io/forecast/PUT-YOUR-KEY-HERE/-19.8157,-43.9542',
  dataType: 'jsonp',

```

### Spinning up a Server

The most straightforward way to spin up a web server is using Python's SimpleHTTPServer. On the root of this project:

```bash
python -m SimpleHTTPServer
```

Then go to [localhost:8000](http://localhost:8000)
