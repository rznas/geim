<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ContactPairHeader-body.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The first Rigidbody or ArticulationBody in the pair.

Use with the `as` keyword to determine the actual type of the component.

```csharp
using UnityEngine;public class Example
{
    public Rigidbody ExtractRigidbodyFromContactPairHeader(ContactPairHeader header)
    {
        return header.body as Rigidbody;
    }    public ArticulationBody ExtractArticulationBodyFromContactPairHeader(ContactPairHeader header)
    {
        return header.body as ArticulationBody;
    }
}
```
