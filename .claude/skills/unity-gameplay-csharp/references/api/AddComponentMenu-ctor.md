<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AddComponentMenu-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| menuName | The path to the component. |
| order | Where in the component menu to add the new item. |

### Description

Add an item in the Component menu.

The script will be placed in the component menu according to `menuName`. For example, if the `menuName` is "Rendering/DoSomething" the new menu will be called DoSomething and appear as a child of the `Rendering` group in the `Components` menu. If `menuName` is "" or starts with "/" the component will be hidden from the menu. 
 Lower order values place the new item higher to the top of the Component menu.
