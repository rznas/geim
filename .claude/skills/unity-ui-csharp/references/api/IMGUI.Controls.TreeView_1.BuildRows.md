<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.TreeView_1.BuildRows.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| root | Root item that was created in the BuildRoot method. |

### Returns

**IList<TreeViewItem<TIdentifier>>** The rows list shown in the TreeView. Can later be accessed using GetRows().

### Description

Override this method to take control of how the rows are generated.

This method is called when Reload is called and every time items are expanded or collapsed. The default implementation of BuildRows takes care of caching the expanded rows based on the full tree and the expanded state of items.

For very large data-sets or for data that change often it can be desirable to only create the rows of the TreeView and not the full tree. In this situation override this method to build the rows manually. If a collapsed parent is encountered then the descendants of that parent can be omitted (since they are not visible). Set the children of that item using the CreateChildListForCollapsedParent() method.

When using this approach then BuildRoot should just create the root TreeViewItem (and not the full tree). You will need to add your own delegate to getNewSelectionOverride in order to handle selection changes. Also ensure to override GetAncestors() and GetDescendantsThatHaveChildren() and use the model data to fetch this information, otherwise framing and expanding sub-trees will fail.

When building the rows manually remember to use the search string of the TreeView to filter items.

Additional resources: BuildRoot, SetupParentsAndChildrenFromDepths, SetupDepthsFromParentsAndChildren, TreeViewItem<T0>.
