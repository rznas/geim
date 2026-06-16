<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/JointLimits-bounciness.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines the size of the bounce when the joint hits it's limit. Also known as restitution.

Additional resources: bounceMinVelocity.

The **size** of the new velocity after the bounce will be determined as: 
`newVelocity = currentVelocity * bounciness`.

When opening an old project using the deprecated `maxBounce` and `minBounce` the new `bounciness` will be chosen as the maximum `maxBounce` and `minBounce`.
