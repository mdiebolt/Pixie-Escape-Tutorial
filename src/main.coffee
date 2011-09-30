# We attach engine to window so that 
# it is accessible throughout your project

# The Engine constructor, like GameObject, also accepts
# a parameter I, which is a collection of instance variables. 
# Here we have defined the canvas instance variable and you 
# will define the backgroundColor during the tutorial.
window.engine = Engine
  # color
  canvas: $("canvas").powerCanvas()

# Add an instance of the class square, defined
# in src/square to the game simulation.
engine.add
  class: "Square"

# start the simulation
engine.start()