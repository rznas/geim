<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorApplication.LockReloadAssemblies.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Prevents loading of assemblies when it is inconvenient.

For example during drag operations you might want to prevent assembly reloading to not lose state during the drag. Each LockReloadAssemblies must be matched by UnlockReloadAssemblies, otherwise scripts will never unload. Unity automatically prevents reloading during mouse down.

Additional resources: EditorApplication.UnlockReloadAssemblies.
