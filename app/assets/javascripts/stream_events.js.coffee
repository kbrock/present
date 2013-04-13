$ ->
  setTimeout ->
    source = new EventSource('/browser')
    source.addEventListener('refresh', (e) ->
      window.location.reload()
  , 1)