$ ->
  setTimeout(->
    console.debug "tracking stream_events"
    source = new EventSource('/browser')
    source.addEventListener 'refresh', (e) ->
      console.debug("triggering refresh")
      url = window.location.href
      # if (buster = url.indexOf('_buster')) > -1
      #   url = url.replace(/&?_buster=.*(&|$)/,'')
      # if url.indexOf('?') == -1
      #   url = url + '?'
      # url = url + "&_buster="+(new Date().getTime())
      Turbolinks.visit(url)
  , 1)
