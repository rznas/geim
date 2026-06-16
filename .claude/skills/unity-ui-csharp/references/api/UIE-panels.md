<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/UIE-panels.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Panels

The panel is the parent object of a visual tree. It owns the `rootVisualElement` but itself isn’t a **visual element**. A visual tree must connect to a panel for the visual elements inside a tree to render. All panels belong to either an Editor Window or a runtime UIDocument. The panel also handles focus control and event dispatching for the visual tree.

Every element in a visual tree holds a direct reference to the panel that holds the visual tree. To verify the connection of a `VisualElement` to a panel, you can test the `panel` property of this element. When the visual element isn’t connected, the test returns `null`.

## Additional resources

- Dispatch events
- The visual tree
- The Panel Settings asset
- Relative and absolute positioning C# example
