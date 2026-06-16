<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/organizing-assets-with-labels.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Organizing assets with labels

Use text labels to group assets into categories. You can assign more than one label to each asset and create custom labels.

## Add a label to an asset

To add a label to an asset:

1. Open the asset in the ****Inspector**** window.
2. In the **Preview** panel, select the label icon.   The label icon in the Preview panel   **Tip:** If the **Preview** panel is minimized, drag the title bar up to expand it.
3. In the labels menu, select a label to apply it or select it again to remove it. The menu lists every label in the project; labels already applied to the asset show a check mark next to them.   Selecting labels for an asset
4. To create a new label and assign it:
  1. Type the label name in the menu text box.
  2. Press **Space** or **Enter**. You can then toggle the new label like any other entry in the menu.

To remove a label, open the label menu and select the label again to clear the check mark.

## Filter project assets by label

Use labels to filter assets in the **Project** window. Choosing a label starts a search that uses the `l:` token. For more information about textual searches, refer to Search expressions.

To filter by label:

1. In the **Project** window, select **Search by Label**.
2. From the list, select a label.

The **Project** window shows results grouped by location: **All**, **In Packages**, **In Assets**, and under the folder you currently have selected.

## Search by label in the Advanced Object Picker and Search windows

You can use the `l:` search token in the **Advanced Object Picker** and **Search** windows. You can also select labels in the Visual query builder in both windows.

## Return an asset’s labels in script

To retrieve an asset’s labels in code, call `AssetDatabase.GetLabels`.

## Additional resources

- Assets and media
- Searching in the Unity Editor
- Search expressions
