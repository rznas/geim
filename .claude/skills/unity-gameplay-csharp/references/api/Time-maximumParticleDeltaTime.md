<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Time-maximumParticleDeltaTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum time a frame can spend on particle updates. If the frame takes longer than this, then updates are split into multiple smaller updates.

Use this function to balance the accuracy of particle simulation against your performance target.

Using a small value gives higher quality particle simulations, but takes more processing time. Particle updates run multiple times at smaller time increments, if the frame time exceeds the threshold provided.

Conversely, a higher value ensures that particle simulations are not broken down into multiple steps per frame, giving the best performance, but loses simulation accuracy when using some of the more advanced particle simulation features.
