<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.IntegrationContext-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Create a new Integration context.

Constructs a new IntegrationContext object. The parameterless constructor creates a new context with default initialization, while the IntPtr constructor is used internally by the light transport system to wrap native context objects.

**Usage Notes:**

- Most user code will not need to create IntegrationContext objects directly.
- Contexts are typically managed by IWorld implementations.
- Manual context creation is only needed for advanced integration scenarios.
