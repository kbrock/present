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
server sent events ( text/event-stream )
  http://tenderlovemaking.com/2012/07/30/is-it-live.html
  http://ngauthier.com/2013/02/rails-4-sse-notify-listen.html
    http://stackoverflow.com/questions/13672743/eventsource-server-sent-events-through-nginx (nginx passthrough)
  faye (alt)
    http://railscasts.com/episodes/316-private-pub
    https://github.com/ryanb/private_pub
  nginx pub/sub
    https://github.com/wandenberg/nginx-push-stream-module/
  http://www.igvita.com/2009/10/21/nginx-comet-low-latency-server-push/
sandbox
  http://stackoverflow.com/questions/195149/is-it-possible-to-sandbox-javascript-running-in-the-browser
  http://stackoverflow.com/questions/5044608/javascript-sandbox
  https://github.com/eligrey/jsandbox
  https://developers.google.com/caja/
client side scripting
  https://gist.github.com/dahlia/562017
  http://blog.fogus.me/2012/01/25/lisp-in-40-lines-of-ruby/

client side svg editors
  http://svgjs.com/test/

Avatar realism
  http://www.idleworm.com/how/anm/02w/walk1.shtml
  http://www.idleworm.com/how/anm/02w/walk2.shtml

Avatar - thing thing
  http://diseasedproductions.net/thingthing.html
  http://www.giantitp.com/forums/showthread.php?p=4835870#post4835870
  http://diseasedproductions.net/thingthing2.html - the creator

  http://blog.benjaminranck.com/2011/07/28/arc-paths-in-svg
  http://stackoverflow.com/questions/5736398/how-to-calculate-the-svg-path-for-an-arc-of-a-circle

http://37signals.com/svn/posts/3091-pssst-your-rails-application-has-a-secret-to-tell-you