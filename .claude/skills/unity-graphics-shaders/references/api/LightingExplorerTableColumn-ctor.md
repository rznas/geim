<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightingExplorerTableColumn-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| type | Depending on what LightingExplorer.DataType we use, built-in compare and draw methods will be used. If you want to fully overload this, use LightingExplorer.DataType.Custom. |
| headerContent | Title for the column header. |
| propertyName | Name of the property on the object you wish to use. If you use LightingExplorer.DataType.Name, choose ‘null’. |
| width | Width of the column. The minimum width is this value divided by 2. The default value is 100. |
| onGUIDelegate | If you want to draw a property differently than the default, provide this delegate. If you use LightingExprlorer.DataType.Custom, you must override this. |
| compareDelegate | If you want to sort properties differently than the default way, provide this delegate. If you use LightingExplorer.DataType.Custom, you must override this. |
| copyDelegate | If you want to copy properties differently than the default way, provide this delegate. |
| dependencyIndices | If you depend on another Serialized property than the one in your column, use this field to specify which indices to include. The first column is index 0. |

### Description

Constructor.
