<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cloth.SetVirtualParticleIndices.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| indices | List of cloth particle indices to use when generating virtual particles. |

### Description

Set indices to use when generating virtual particles.

Virtual particles provide more robust and accurate collision handling against collision spheres and capsules. More virtual particles will generally increase the accuracy of collision handling, and thus a sufficient number of virtual particles can mimic triangle-based collision handling. Virtual particles are specified as barycentric interpolation of real particles: The position of a virtual particle is w0 * P0 + w1 * P1 + w2 * P2, where P1, P2, P3 real particle positions. The barycentric weights w0, w1, w2 are stored in a separate table so they can be shared across multiple virtual particles.
