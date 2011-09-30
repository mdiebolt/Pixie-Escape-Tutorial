# Defining a constructor for a object of class "Square"
# Constructors accept an object of key/value pairs 
# (I) to define their instance variables.
Square = (I) ->
  # Make sure I is at least an empty object
  I ||= {}

  # Object.reverseMerge takes I and adds some 
  # default instance variables if I doesn't
  # already have a key with the same name.
  Object.reverseMerge I,
    color: "red"
    x: 100
    y: 180
    width: 30
    height: 30
    velocity: Point(2, 0)   

  # Give this object all the methods 
  # that GameObject provides. This is 
  # how PixieEngine does inheritance.
  self = GameObject(I)

  # Code that is bound to the step event
  # is executed each time through the main loop.
  # The engine steps through the loop for us.
  self.bind 'step', ->
    # Incrementing the square's 
    # position by its current velocity.
    I.x += I.velocity.x
    I.y += I.velocity.y

    # key handling

  # We must return `self` at the end of our constructors.
  self
