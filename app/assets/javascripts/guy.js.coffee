class window.Guy
  constructor: (@svg, @x=10, @y=0) ->
    @size = 36
    @build()
    @tweak(0)
    @targetx = @x
    @targety = @y

  # put the components onto the screen
  build: ->
    @guy = @svg.group()
    @guy.move( @x, @y)
    @torso = @guy.circle(32).move(10,50).attr('class', 'torso')
    @left_hand = @guy.circle(16).move(0,70).attr('class', 'hand')
    @right_hand = @guy.circle(16).move(50,70).attr('class', 'hand')

    @head = @guy.group()
    @head.circle(46).move(0,0).attr('class', 'head')

    @left_eye = @head.ellipse(7,12).attr('class','eye')
    @right_eye = @head.ellipse(7,12).attr('class','eye')
    @left_eye.move(14,15)
    @right_eye.move(26,15)

    @left_foot = @guy.path('M24,12 A12,12 0 0,0 0,12 z').attr('class','foot')
    @right_foot = @guy.path('M24,12 A12,12 0 0,0 0,12 z').attr('class','foot')
    @left_foot.move( 0,95)
    @right_foot.move(32,95)
    @

  # use attributes to properly place the various elements
  # morph is 0 .. 1
  tweak: (offset=0) ->
    @guy.move(@x, @y)
    @torso.y(50 + offset * 2)
    @left_hand.y( 70 - offset * 5)
    @right_hand.y( 70 - offset * 5)
    @head.y(  0 + offset * 5)
    @

  delta: (x, y) ->
    targetx = @targetx + x
    targety = @targety + y
    if (targetx >= 0 && targety >= 0)
      @move(targetx, targety)
  move: (@targetx, @targety) ->
    oldx=@x
    oldy=@y
    @left_foot.animate(1000).during (pos) =>
      @x=oldx + (targetx-oldx)*pos
      @y=oldy + (targety-oldy)*pos
    @


  animate: (inhale=true) ->
    @guy.animate(400).during((pos, morph) =>
      if inhale
        @tweak(pos)
      else
        @tweak(1-pos)
    ).after =>
      @animate(!inhale)
    @
