<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/SceneViewContextMenu.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Scene view context menu

Use the **Scene** view context menu to access common **Scene view** actions directly in the scene rather than from the menu **toolbar**.

The menu options that display in the Scene view context menu depend on your current selection and the tool context enabled in the Tools overlay. If you’ve selected a **GameObject**, the Scene view context menu displays options for that GameObject and any relevant attached components.

To display the context menu, right-click in the Scene view.

**Note**: You can select a different shortcut to display the Scene view context menu in the Shortcuts Manager.

The default tool context in the Scene view is **GameObject**. When the **GameObject** tool context is enabled, the Scene view context menu displays the following menu items by default when you select a GameObject:

- Clipboard actions such as cut, copy, paste, delete, and duplicate.
- GameObject view options to help you visualize the selected GameObject in the Scene view.
- The option to Isolate selected GameObjects in the Scene view so that only the selected GameObject is visible.
- The option to add a component to the selected GameObject.
- The option to open the properties of the selected GameObject in a new window.
- The Prefab menu.
- The Transform menu.
- The **Grid** menu, which contains grid operations such as **Move to Handle Position** and **Reset to World**.

If the GameObject has additional components attached to it, actions related to those components display at the end of the Scene view context menu.

If your project contains multiple tool contexts, you can use the first button in the Tools overlay to select a tool context. If you enable a tool context that isn’t **GameObject**, the Scene view context menu displays options relevant to your selection in that tool context. For example, if your project contains the [Splines](https://docs.unity3d.com/Packages/com.unity.splines@latest) package and you enable the **Splines** tool context, then the Scene view context menu displays options to create and edit splines.

## Additional resources

- Using the Scene view
- Scene view navigation
- Keyboard shortcuts
