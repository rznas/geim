<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cloth-stiffnessFrequency.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the stiffness frequency parameter.

The stiffness frequency controls the power-law nonlinearity of all rate of change parameters (stretch stiffness, shear stiffness, bending stiffness, tether stiffness, self-collision stiffness, motion constraint stiffness, damp coefficient, linear and angular drag coefficients). Increasing the frequency avoids numerical cancellation for values near zero or one, but increases the non-linearity of the parameter. It is not recommended to change this parameter after cloth initialization. For example, the portion of edge overstretch removed per second is equal to the stretch stiffness raised to the power of the stiffness frequency.
