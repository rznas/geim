<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cloth-useVirtualParticles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Add one virtual particle per triangle to improve collision stability.

Virtual particles provide a way of improving cloth collision without increasing the cloth resolution. They are called 'virtual' particles because they only exist during the collision processing stage and do not have their position, velocity or mass explicitly stored like regular particles, they can be thought of as providing additional samples on the collision surface.
