# ML-Mice

Rewards:

- (-1.0f/maxSteps) at each step
- +1.0f if Blue reaches Yellow 

Action Space (Continuous - 2 actions):

- Horizontal direction
- Vertical direction

The resulting Vector  is normalized then scaled by speed.
State Space (Continuous - 6 states):

- Relative position of Yellow
- Yellow velocity
- Own velocity
