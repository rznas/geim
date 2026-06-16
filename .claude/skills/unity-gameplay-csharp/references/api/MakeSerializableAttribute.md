<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MakeSerializableAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Register a type as Serializable.

Use SerializeReference on a field to serialize the field as a reference to another object. Unity also serializes the referenced object. Types using SerializeReference must have the [Serializable] attribute. However, if you omit the [Serializable] attribute, Unity serializes the class but reports a warning message for each type missing the attribute.

If you don't have access to the source code of the type you're serializing, such as types that are in a package that only ships with precompiled assemblies, then you can use the [MakeSerializable] attribute. Unity treats types with MakeSerializable as if they have the [Serialize] attribute, and suppresses the warning.

The MakeSerializable attribute is an assembly attribute and can be inserted anywhere in your project source code. During domain reload the Editor scans all loaded assemblies for these attributes and registers the types as serializable. MakeSerializable otherwise has no effect on objects that are serialized through regular serialization, for example with [SerializeField]. It only affects objects serialized with [SerializeReference].

Additional resources: SerializeReference.

```csharp
using UnityEngine;// Ask Unity to consider the given type serializable
[assembly: MakeSerializable(typeof(Some3rdPartyNamespace.SomeType))]class MyMonoBehaviour : MonoBehaviour
{
	// This would issue a warning if we had not marked the type serializable above
	[SerializeReference]
	public Some3rdPartyNamepace.SomeType theMeaningOfLife;
}// This could live any where in your project, even in a 3rd party assembly which you do not have source code for
// but for completeness of this example it is here in a namespace
namespace Some3rdPartyNamespace
{
	// The type is not mark serializable
	class SomeType
	{
		public int meaningOfLife;
	}
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| MakeSerializableAttribute | The constructor for the MakeSerializable attribute. |
