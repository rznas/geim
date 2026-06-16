<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializeField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Force Unity to serialize a private field.

Unity only serializes public fields by default. To serialize private fields, add the `[SerializeField]` attribute to them.

Unity serializes all your script components, reloads the new assemblies, and recreates your script components from the serialized versions. This serialization is done with an internal Unity serialization system; not with .NET's serialization functionality.

For a full reference of what Unity can serialize, refer to Serialization rules.

Additional resources: SerializeReference

```csharp
using UnityEngine;public class SomePerson : MonoBehaviour
{
    //This field gets serialized because it is public.
    public string firstName = "John";    //This field does not get serialized because it is private.
    private int age = 40;    //This field gets serialized even though it is private
    //because it has the SerializeField attribute applied.
    [SerializeField]
    private bool hasHealthPotion = true;    void Start()
    {
        if (hasHealthPotion)
            Debug.Log("Person's first name: " + firstName + " Person's age: " + age);
    }
}
```
