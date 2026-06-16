<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SortingLayer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

SortingLayer allows you to set the render order of multiple sprites easily. There is always a default SortingLayer named "Default" which all sprites are added to initially. Added more SortingLayers to easily control the order of rendering of groups of sprites. Layers can be ordered before or after the default layer.

Additional resources: Tags and Layers.

### Static Properties

| Property | Description |
| --- | --- |
| layers | Returns all the layers defined in this project. |
| onLayerAdded | Delegate for sorting layer events when a layer is added. |
| onLayerRemoved | Delegate for sorting layer events when a layer is removed. |

### Properties

| Property | Description |
| --- | --- |
| id | This is the unique id assigned to the layer. It is not an ordered running value and it should not be used to compare with other layers to determine the sorting order. |
| name | Returns the name of the layer as defined in the TagManager. |
| value | This is the relative value that indicates the sort order of this layer relative to the other layers. |

### Static Methods

| Method | Description |
| --- | --- |
| GetLayerValueFromID | Returns the final sorting layer value. To determine the sorting order between the various sorting layers, use this method to retrieve the final sorting value and use CompareTo to determine the order. |
| GetLayerValueFromName | Returns the final sorting layer value. Additional resources: GetLayerValueFromID. |
| IDToName | Returns the unique id of the layer. Will return "<unknown layer>" if an invalid id is given. |
| IsValid | Returns true if the id provided is a valid layer id. |
| NameToID | Returns the id given the name. Will return 0 if an invalid name was given. |

### Delegates

| Delegate | Description |
| --- | --- |
| LayerCallback | Calls the methods in its invocation list when a sorting layer is added or removed. |
