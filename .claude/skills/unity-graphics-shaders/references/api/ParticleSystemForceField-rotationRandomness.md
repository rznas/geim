<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemForceField-rotationRandomness.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Apply randomness to the Force Field axis that particles will travel around.

When applying rotational forces to particles, the particles will spin around the Z axis of the Force Field's Transform component by default.

Using rotationRandomness allows each particle to deviate from this default axis by the specified amount. A value of 1 allows each particle to choose a completely random axis to spin around, whereas smaller values will constrain the movement more closely to the default axis.

Additional resources: ParticleSystemForceField.
