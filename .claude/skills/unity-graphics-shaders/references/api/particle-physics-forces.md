<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/particle-physics-forces.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Particle physics forces

Understand how the **Particle** System can simulate physics forces that act on a particle.

## Force over lifetime

The Force over Lifetime module can change the strength of simulated physics forces on a particle based on how long the particle has existed.

Fluids are often affected by forces as they move. For example, smoke will accelerate slightly as it rises from a fire, carried up by the hot air around it. Subtle effects can be achieved by using curves to control the force over the particles’ lifetimes. Using the previous example, smoke will initially accelerate upward but as the rising air gradually cools, the force will diminish. Thick smoke from a fire might initially accelerate, then slow down as it spreads and perhaps even start to fall to earth if it persists for a long time.

## External forces

The External Forces module modifies the effect of **wind zones** and Particle System Force Fields on particles emitted by the system.

To get the best results out of this feature, create separate **GameObjects** with ParticleSystemForceFields components.

A **Terrain** can incorporate *wind zones* which affect the movement of trees on the landscape. Enabling this section allows the wind zones to blow particles from the system. The *Multiplier* value lets you scale the effect of the wind on the particles, since they will often be blown more strongly than tree branches.
