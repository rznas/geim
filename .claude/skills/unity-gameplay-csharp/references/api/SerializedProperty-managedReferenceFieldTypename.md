<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SerializedProperty-managedReferenceFieldTypename.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

String corresponding to the value of the managed reference field full type string.

Contains a valid value when propertyType is SerializedPropertyType.ManagedReference. This property is Read Only (you cannot write to it). 
 


 Contrary to managedReferenceFullTypename, this property returns the full static type name for the managed reference field, not the dynamic instance's type. 
 


 The full static type name string returned has the following format: "[assembly-name] [namespace.][parent-class-names][classname]" where: 
 - `[assembly-name]` is the name of the assembly that contains the target type 
 - `[namespace.]` is an optional (if empty) namespace followed by a '.' 
 - `[parent-class-names]` is a '/' separated list of optional parent class names (in the case of nested class definitions) 
 - `[classname]` is the managed reference field class name. 
 


 Additional resources: propertyType, SerializedPropertyType.ManagedReference.
