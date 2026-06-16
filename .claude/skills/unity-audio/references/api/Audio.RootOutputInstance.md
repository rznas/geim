<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.RootOutputInstance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A ProcessorInstance with extra callbacks intended to allow scheduling different management and compute work over the course of a mix frame. Finally, additional audio can be appended to the final audio output.

Usage of this is generally very low level, and intended to provide integration points for internal or external audio middleware, that share the same input/output resources as the host audio system. Create instances of these using ControlContext.AllocateRootOutput.

### Public Methods

| Method | Description |
| --- | --- |
| Equals | Checks if this instance equals another. |
| GetHashCode | Retrieves a hash code based on this instance. |

### Operators

| Operator | Description |
| --- | --- |
| operator != | Checks if two instances are not equal. |
| operator == | Checks if two instances are equal. |
| ProcessorInstance | Convert this RootOutputInstance to its more general ProcessorInstance representation. |
