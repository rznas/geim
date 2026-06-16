<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Properties.PropertyVisitor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base class for implementing algorithms using properties. This is an abstract class.

 For more information on how to implement a property visitor by deriving from this class, including an example, refer to Create a property visitor with the PropertyVisitor class

### Public Methods

| Method | Description |
| --- | --- |
| AddAdapter | Adds an adapter to the visitor. |
| RemoveAdapter | Removes an adapter from the visitor. |

### Protected Methods

| Method | Description |
| --- | --- |
| IsExcluded | Called before visiting each property to determine if the property should be visited. |
| VisitCollection | Called when visiting any non-specialized collection property. |
| VisitDictionary | Called when visiting a specialized dictionary property. |
| VisitList | Called when visiting a specialized list property. |
| VisitProperty | Called when visiting any leaf property with no specialized handling. |
| VisitSet | Called when visiting a specialized set property. |
