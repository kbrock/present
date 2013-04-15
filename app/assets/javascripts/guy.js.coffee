class window.Guy
  constructor: (@svg, @x=5, @y=5) ->
    @guy = @svg.group()
    @guy.move(@x, @y)
    @torso = @guy.circle(35).move(14,45).attr('class', 'torso')
    @head = jsvg.group();
    #@head.move(0,0)
    @head.circle(46).attr('class', 'head')
    @head.ellipse(5,12).move(10,20).attr('class','eye')
    @hand = @guy.circle(16).move(25,65).attr('class', 'hand')
    @guy.path('M24,12 A12,12 0 0,0 0,12 z').move(7,90).attr('class','foot')
    @guy.path('M24,12 A12,12 0 0,0 0,12 z').move(22,90).attr('class','foot')

  animate: (inhale=true)->
    @head.animate(400).during((pos, morph) =>
      if inhale
        @head.y(morph(0,5))
        @torso.y(morph(40,42))
        @hand.y(morph(65,60))
      else
        @head.y(morph(5, 0))
        @torso.y(morph(42, 40))
        @hand.y(morph(60, 65))
    ).after =>
      @animate(!inhale)
