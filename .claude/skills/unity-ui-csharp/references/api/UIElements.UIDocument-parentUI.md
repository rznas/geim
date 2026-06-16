<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.UIDocument-parentUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

If the GameObject that this UIDocument component is attached to has a parent GameObject, and that parent GameObject also has a UIDocument component attached to it, this value is set to the parent GameObject's UIDocument component automatically.

If a UIDocument has a parent, you cannot add it directly to a panel (PanelSettings). Unity adds it to the parent's root visual element instead.

 The advantage of placing UIDocument GameObjects under other UIDocument GameObjects is that you can have many UIDocuments all drawing in the same panel (rootVisualElement) and therefore able to batch together. A typical example is rendering health bars on top of characters, which would be more expensive to render in their separate panels (and batches) compared to combining them to a single panel, one batch.
