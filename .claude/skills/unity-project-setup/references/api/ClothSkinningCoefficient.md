<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ClothSkinningCoefficient.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The ClothSkinningCoefficient struct is used to set up how a Cloth component is allowed to move with respect to the SkinnedMeshRenderer it is attached to.

This is set using the Cloth.coefficients property on the Cloth component, which is a per-vertex array of ClothSkinningCoefficient structs. Typically, you will not set these values from code, but instead, set them up in the editor which shows up when you look at the Cloth component in the inspector.

### Properties

| Property | Description |
| --- | --- |
| collisionSphereDistance | Definition of a sphere a vertex is not allowed to enter. This allows collision against the animated cloth. |
| maxDistance | Distance a vertex is allowed to travel from the skinned mesh vertex position. |
