# README

## Dynamic Presentations

Actors

  Presenter (Participant with some privileges)
    can create Presentation
      can create Slides
    can create SlideScripts
      can change active Slides (transitions)
      can run SlideScripts
    can map keys to SlideScripts
    can apply shared SlideEdits
    can grant permissions to apply SlideEdits / SlideScripts from a stream

  Participant
    can create Avatar
      can read other Avatars
      can move/edit my Avatars
    can create SlideEdits
      can read local SlideEdits
      can propose server SlideEdits
    can create local SlideScripts
      can read slides, avatars
      can change slides, avatars (with stated intent)
    can link ui/keyboard elements to SlideScripts
    can selectivly share SlideEdits / SlideScripts with individuals


Nouns
  Slide (text/images in a layout)
  SlideScript
    subsystem read/write
  SlideEdit
  Avatar



## Technology

rails 4.0
server side events
  http://tenderlovemaking.com/2012/07/30/is-it-live.html
sandbox
  http://stackoverflow.com/questions/195149/is-it-possible-to-sandbox-javascript-running-in-the-browser
  http://stackoverflow.com/questions/5044608/javascript-sandbox
  https://github.com/eligrey/jsandbox
  https://developers.google.com/caja/
client side scripting
  https://gist.github.com/dahlia/562017
  http://blog.fogus.me/2012/01/25/lisp-in-40-lines-of-ruby/


#tangent 

app -> redis -> nginx -> browser
http://stackoverflow.com/questions/13672743/eventsource-server-sent-events-through-nginx
https://github.com/wandenberg/nginx-push-stream-module/
http://www.igvita.com/2009/10/21/nginx-comet-low-latency-server-push/

http://37signals.com/svn/posts/3091-pssst-your-rails-application-has-a-secret-to-tell-you