<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty-managedReferenceFullTypename.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

String corresponding to the value of the managed reference object (dynamic) full type string.

Contains a valid value when propertyType is SerializedPropertyType.ManagedReference. This property is Read Only (you cannot write to it). 
 


 The full type name string returned has the following format: "[assembly-name] [namespace.][parent-class-names][classname]" where: 
 - `[assembly-name]` is the name of the assembly that contains the target type 
 - `[namespace.]` is an optional (if empty) namespace followed by a '.' 
 - `[parent-class-names]` is a '/' separated list of optional parent class names (in the case of nested class definitions) 
 - `[classname]` is the actual dynamic type name of the managed object class. 
 


 'null' references return an empty type string.

 Additional resources: propertyType, SerializedPropertyType.ManagedReference.
