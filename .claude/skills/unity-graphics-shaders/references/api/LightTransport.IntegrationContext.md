<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.IntegrationContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Container for integration-specific data and state shared across multiple light transport calculations.

This class contains persistent data that can be shared among different invocations of light transport integrators. It serves as a container for cached computations, acceleration structures, and other data that can be reused to improve performance across multiple integration passes.

 **Usage Notes:**

 - Most user code will not need to create IntegrationContext objects directly. - Contexts are typically managed by IWorld implementations. - Manual context creation is only needed for advanced integration scenarios.

 Reusing an IntegrationContext across multiple integrator operations can significantly improve performance by avoiding redundant preprocessing and data structure rebuilding.

### Constructors

| Constructor | Description |
| --- | --- |
| IntegrationContext | Create a new Integration context. |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Perform a dispose operation. |
