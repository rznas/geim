<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/IMGUI.Controls.TreeView.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The TreeView is an IMGUI control that lets you create tree views, list views and multi-column tables for Editor tools.

It is customizable with regards to row content rendering, dragging logic, selection logic, searching, sorting and renaming of items. To ensure consistency between TreeViews the following features are not customizable: Foldout arrow rendering, selection rendering, drag markers rendering.

A good place to start is BuildRoot.

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| baseIndent | Indent used for all rows before the tree foldout arrows and content. |
| cellMargin | When using a MultiColumnHeader this value adjusts the cell rects provided for all columns except the tree foldout column. |
| columnIndexForTreeFoldouts | When using a MultiColumnHeader this value should be set to the column index in which the foldout arrows should appear. |
| customFoldoutYOffset | Custom vertical offset of the foldout arrow. |
| depthIndentWidth | Value that returns how far the foldouts are indented for each increasing depth value. |
| enableItemHovering | Set this property true if item hover effect is wanted. Default value is false. |
| extraSpaceBeforeIconAndLabel | Value to control the spacing before the default icon and label. Can be used e.g for placing a toggle button to the left of the content. |
| foldoutOverride | Register a callback to this property to override the Foldout button in the TreeView. |
| foldoutWidth | Width of the built-in foldout arrow. |
| getNewSelectionOverride | Register a callback to this field to override how the TreeView handles selection changes in response to keys and mouse clicks. |
| hasSearch | The current search state of the TreeView. |
| hoveredItem | Use this property to detect which TreeViewItem the mouse cursor is currently hovering over in the TreeView. This property is only valid if the enableItemHovering property has been set to true. |
| isDragging | True if the user is currently dragging one or more items in the TreeView, and false otherwise. |
| isInitialized | The TreeView is initialized by calling Reload(). Therefore returns false until Reload() is called the first time. |
| multiColumnHeader | Get the MultiColumnHeader of the TreeView. Can be null if the TreeView was created without a MultiColumnHeader. |
| rootItem | The hidden root item of the TreeView (it is never rendered). |
| rowHeight | The fixed height used for each row in the TreeView if GetCustomRowHeight have not been overridden. |
| searchString | Current search string of the TreeView. |
| showAlternatingRowBackgrounds | Enable this to show alternating row background colors. |
| showBorder | Enable this to show a border around the TreeView. |
| showingHorizontalScrollBar | Returns true if the horizontal scroll bar is showing, otherwise false. |
| showingVerticalScrollBar | Returns true if the vertical scroll bar is showing, otherwise false. |
| state | The state of the TreeView (expanded state, selection, scroll etc.) |
| totalHeight | Returns the sum of the TreeView row heights, the MultiColumnHeader height (if used) and the border (if used). |
| treeViewControlID | The controlID used by the TreeView to obtain keyboard control focus. |
| treeViewRect | The Rect the TreeView is being rendered to. |
| useScrollView | When drawing the TreeView contents, will it be enclosed within a ScrollView? |

### Public Methods

| Method | Description |
| --- | --- |
| BeginRename | Shows the rename overlay for a TreeViewItem. |
| CollapseAll | Collapse all expanded items in the TreeView. |
| EndRename | Ends renaming if the rename overlay is shown. If called while the rename overlay is not being shown, this method does nothing. |
| ExpandAll | Expand all collapsed items in the TreeView. |
| FrameItem | This will reveal the item with ID id (by expanding the ancestors of that item) and will make sure it is visible in the ScrollView. |
| GetExpanded | Returns a list of TreeViewItem IDs that are currently expanded in the TreeView. |
| GetRows | This is the list of TreeViewItems that have been built in BuildRows. |
| GetSelection | Returns the list of TreeViewItem IDs that are currently selected. |
| HasFocus | Returns true if the TreeView and its EditorWindow have keyboard focus. |
| HasSelection | Returns true if the TreeView has a selection. |
| IsExpanded | Returns true if the TreeViewItem with ID id is currently expanded. |
| IsSelected | Returns true if the TreeViewItem with ID id is currently selected. |
| OnGUI | This is the main GUI method of the TreeView, where the TreeViewItems are processed and drawn. |
| Reload | Call this to force the TreeView to reload its data. This in turn causes BuildRoot and BuildRows to be called. |
| Repaint | Request a repaint of the window that the TreeView is rendered in. |
| SelectAllRows | Selects all rows in the TreeView. |
| SetExpanded | Set a single TreeViewItem to be expanded or collapsed. |
| SetExpandedRecursive | Expand or collapse all items under item with id. |
| SetFocus | Calling this function changes the keyboard focus to the TreeView. |
| SetFocusAndEnsureSelectedItem | Calling this function changes the keyboard focus to the TreeView and ensures an item is selected. Use this function to enable key navigation of the TreeView. |
| SetSelection | Set the selected items of the TreeView. |

### Protected Methods

| Method | Description |
| --- | --- |
| AddExpandedRows | Adds the expanded rows of the full tree to the input list. Only use this method if a full tree was built in BuildRoot. |
| AfterRowsGUI | This is called after all rows have their RowGUI called. |
| BeforeRowsGUI | This is called before any rows have their RowGUI called. |
| BuildRoot | Abstract method that is required to be implemented. By default this method should create the full tree of TreeViewItems and return the root. |
| BuildRows | Override this method to take control of how the rows are generated. |
| CanBeParent | Override this method to control which items are allowed to be parents. |
| CanChangeExpandedState | Override this method to control whether an item can be expanded or collapsed by key or mouse. |
| CanMultiSelect | Override this method to control whether the item can be part of a multiselection. |
| CanRename | Override this method to control whether the item can be renamed using a keyboard shortcut or when clicking an already selected item. |
| CanStartDrag | This function is called whenever a TreeViewItem is clicked and dragged. It returns false by default. |
| CenterRectUsingSingleLineHeight | Modifies the input rect so it is centered and have a height equal to EditorGUIUtility.singleLineHeight. |
| CommandEventHandling | This function is called automatically and handles the ExecuteCommand events for “SelectAll” and “FrameSelection”. Override this function to extend or avoid Command events. |
| ContextClicked | Override this method to handle context clicks outside any items (but still in the TreeView rect). |
| ContextClickedItem | Override this method to handle a context click on an item with ID TreeViewItem<T0>.id. |
| DoesItemMatchSearch | Override this function to extend or change the search behavior. |
| DoubleClickedItem | Override this method to handle double click events on an item. |
| ExpandedStateChanged | Override to get notified when items are expanded or collapsed. This is a general notification that the expanded state has changed. |
| FindItem | Finds a TreeViewItem by an ID. |
| FindRowOfItem | Returns the row of the given TreeViewItem. |
| FindRows | Useful for converting from TreeViewItem IDs to TreeViewItems using the current rows. |
| GetAncestors | This method is e.g. used for revealing items that are currently under a collapsed item. |
| GetCellRectForTreeFoldouts | Utility for multi column setups. This method will clip the input rowRect against the column rect defined by columnIndexForTreeFoldouts to get the cell rect where the the foldout arrows appear. |
| GetContentIndent | Returns the horizontal content offset for an item. This is where the content should begin (after the foldout arrow). |
| GetCustomRowHeight | Override to control individual row heights. |
| GetDescendantsThatHaveChildren | Returns all descendants for the item with ID id that have children. |
| GetFirstAndLastVisibleRows | Returns the first and the last indices of the rows that are visible in the scroll view of the TreeView. |
| GetFoldoutIndent | Returns the horizontal foldout offset for an item. This is where the foldout arrow is rendered. |
| GetRenameRect | Override this method if custom GUI handling are used in RowGUI. This method for controls where the rename overlay appears. |
| GetRowRect | Get the rect for a row. |
| HandleDragAndDrop | Override this function to control the drag and drop behavior of the TreeView. |
| KeyEvent | Override this method to handle events when the TreeView has keyboard focus. |
| RefreshCustomRowHeights | Refreshes the cache of custom row rects based on the heights returned by GetCustomRowHeight. |
| RenameEnded | Called when rename ends either by the user completing the renaming process, when the rename overlay loses focus or is closed using EndRename. |
| RowGUI | Override this method to add custom GUI content for the rows in the TreeView. |
| SearchChanged | Override the method to get notified of search string changes. |
| SelectionChanged | Override the method to get notified of selection changes. |
| SelectionClick | Use this method in RowGUI to peform the logic of a mouse click. |
| SetupDragAndDrop | This function is called when CanStartDrag returns true. |
| SingleClickedItem | Override this method to handle single click events on an item. |
| SortItemIDsInRowOrder | Returns a list sorted in the order in which they are shown in the TreeView. |

### Static Methods

| Method | Description |
| --- | --- |
| CreateChildListForCollapsedParent | Creates a dummy TreeViewItem list. Useful when overriding BuildRows to prevent building a full tree of items. |
| IsChildListForACollapsedParent | Utility method for checking if the childList is identical to the one returned by the CreateChildListForCollapsedParent method. |
| SetupDepthsFromParentsAndChildren | Utility method using the depth of the input TreeViewItem to set the correct depths for all its descendant TreeViewItems. |
| SetupParentsAndChildrenFromDepths | Utility method for initializing all the parent and children properties of the rows using the order and the depths values that have been set. |

### Delegates

| Delegate | Description |
| --- | --- |
| DoFoldoutCallback | Callback signature used to override the TreeView foldout. See foldoutOverride. |
| GetNewSelectionFunction | A callback which determines how TreeView handles selection changes in response to keys and mouse clicks. |
