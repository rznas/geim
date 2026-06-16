<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem-useAutoRandomSeed.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls whether the Particle System uses an automatically-generated random number to seed the random number generator.

If set to true, the Particle System will generate a new random seed each time it is played. If set to false, ParticleSystem.randomSeed will be used instead, allowing for a constant seed (useful if you want your particles to play in exactly the same way each time) or user-defined random value (for example, you may want to cycle through an array of seeds).
