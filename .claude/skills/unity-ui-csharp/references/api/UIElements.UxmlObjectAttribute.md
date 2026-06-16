<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.UxmlObjectAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Declares that a class can be instantiated from UXML and contain UXML attributes. The UxmlSerializedData includes a generated UxmlSerializedData.CreateInstance method that uses the default constructor. You can use the UxmlCreateInstanceMethodAttribute to replace the default behaviour and provide your own creation method.

A UXML object is a class that can be instantiated from UXML and contain UXML attributes. By utilizing the UxmlObjectReferenceAttribute attribute, you can use a UXML object to associate complex data with a field, surpassing the capabilities of a single UxmlAttributeAttribute.
