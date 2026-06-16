<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SparseTexture-isCreated.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is the sparse texture actually created? (Read Only)

Sparse texture contents can become "lost", mostly on graphics device change or active color space switch. When that happens, isCreated will start returning false - meaning you should recreate all the needed tiles again.

Additional resources: SparseTexture.
