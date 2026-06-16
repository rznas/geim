<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.IntegrationContext.Dispose.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Perform a dispose operation.

Releases all resources associated with the integration context, including native memory, cached data structures, and GPU resources. This method should be called when the context is no longer needed to prevent resource leaks.

The context becomes invalid after disposal and should not be used for further operations.
