<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.MultiColumnTreeView.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A tree view with multi column support. For more information, refer to MultiColumnTreeView.

### Properties

| Property | Description |
| --- | --- |
| columns | The collection of columns for the multi-column header. |
| sortColumnDescriptions | The collection of sorted columns by default. |
| sortedColumns | Contains information about which columns are currently being sorted. |
| sortingMode | Indicates how to sort columns. To enable sorting, set it to ColumnSortingMode.Default or ColumnSortingMode.Custom. The Default mode uses the sorting algorithm provided by MultiColumnController, acting on indices. You can also implement your own sorting with the Custom mode, by responding to the columnSortingChanged event. |
| viewController | The view controller for this view, cast as a MultiColumnTreeViewController. |

### Constructors

| Constructor | Description |
| --- | --- |
| MultiColumnTreeView | Initializes a MultiColumnTreeView with an empty header. |

### Public Methods

| Method | Description |
| --- | --- |
| SetViewController | Assigns the view controller for this view and registers all events required for it to function properly. |

### Events

| Event | Description |
| --- | --- |
| columnSortingChanged | If a column is clicked to change sorting, this event is raised to allow users to sort the tree view items. For a default implementation, set sortingMode to ColumnSortingMode.Default. |
| headerContextMenuPopulateEvent | If a column is right-clicked to show context menu options, this event is raised to allow users to change the available options. |

### Inherited Members

### Static Properties

| Property | Description |
| --- | --- |
| itemContentContainerUssClassName | The USS class name for TreeView item container elements. |
| itemIndentUssClassName | The USS class name for TreeView indent element. |
| itemToggleUssClassName | The USS class name for TreeView item toggle elements. |
| itemUssClassName | The USS class name for TreeView item elements. |
| ussClassName | The USS class name for TreeView elements. |
| borderUssClassName | The USS class name for BaseVerticalCollectionView elements with a border. |
| dragHoverBarUssClassName | The USS class name of the drag hover bar. |
| dragHoverMarkerUssClassName | The USS class name of the drag hover circular marker used to indicate depth. |
| itemAlternativeBackgroundUssClassName | The USS class name for odd rows in the BaseVerticalCollectionView. |
| itemDragHoverUssClassName | The USS class name applied to an item element on drag hover. |
| itemSelectedVariantUssClassName | The USS class name of selected item elements in the BaseVerticalCollectionView. |
| listScrollViewUssClassName | The USS class name of the scroll view in the BaseVerticalCollectionView. |
| disabledUssClassName | USS class name of local disabled elements. |

### Properties

| Property | Description |
| --- | --- |
| autoExpand | When true, items are automatically expanded when added to the TreeView. |
| itemsSource | Access to the itemsSource. For a TreeView, the source contains the items wrappers. |
| viewController | The view controller for this view, cast as a BaseTreeViewController. |
| contentContainer | Returns the content container for the BaseVerticalCollectionView. Because the BaseVerticalCollectionView control automatically manages its content, this always returns null. |
| fixedItemHeight | The height of a single item in the list, in pixels. |
| horizontalScrollingEnabled | This property controls whether the collection view shows a horizontal scroll bar when its content does not fit in the visible area. |
| reorderable | Gets or sets a value that indicates whether the user can drag list items to reorder them. |
| selectedIds | Returns the persistent IDs of selected items in the data source, regardless of whether they are collapsed or not. Always returns an enumerable, even if no item is selected, or a single item is selected. |
| selectedIndex | Returns or sets the selected item's index in the data source. If multiple items are selected, returns the first selected item's index. If multiple items are provided, sets them all as selected. If no item is selected, returns -1. |
| selectedIndices | Returns the indices of selected items in the data source. Always returns an enumerable, even if no item is selected, or a single item is selected. |
| selectedItem | Returns the selected item from the data source. If multiple items are selected, returns the first selected item. |
| selectedItems | Returns the selected items from the data source. Always returns an enumerable, even if no item is selected, or a single item is selected. |
| selectionType | Controls the selection type. |
| showAlternatingRowBackgrounds | This property controls whether the background colors of collection view rows alternate. Takes a value from the AlternatingRowBackground enum. |
| showBorder | Enable this property to display a border around the collection view. |
| virtualizationMethod | The virtualization method to use for this collection when a scroll bar is visible. Takes a value from the CollectionVirtualizationMethod enum. |
| binding | Binding object that will be updated. |
| bindingPath | Path of the target property to be bound. |
| canGrabFocus | Whether the element can be focused. |
| delegatesFocus | Whether the element delegates the focus to its children. |
| focusable | Whether an element can potentially receive focus. |
| focusController | Returns the focus controller for this element. |
| tabIndex | An integer used to sort focusable elements in the focus ring. Must be greater than or equal to zero. |
| childCount | Number of child elements in this object's contentContainer. |
| contentRect | The rectangle of the content area of the element, in the local space of the element. (Read Only) |
| customStyle | The custom style properties accessor of a VisualElement (Read Only). |
| dataSource | Assigns a data source to this VisualElement which overrides any inherited data source. This data source is inherited by all children. |
| dataSourcePath | Path from the data source to the value. |
| dataSourceType | The possible type of data source assignable to this VisualElement. This information is only used by the UI Builder as a hint to provide some completion to the data source path field when the effective data source cannot be specified at design time. |
| disablePlayModeTint | Play-mode tint is applied by default unless this is set to true. It's applied hierarchically to this VisualElement and to all its children that exist on an editor panel. |
| enabledInHierarchy | Returns true if the VisualElement is enabled in its own hierarchy. |
| enabledSelf | Returns true if the VisualElement is enabled locally. |
| experimental | Returns the UIElements experimental interfaces. |
| generateVisualContent | Delegate function to generate the visual content of a visual element. |
| hasActivePseudoState | Returns true if this element matches the :active pseudo-class. |
| hasCheckedPseudoState | Returns true if this element matches the :checked pseudo-class. |
| hasDisabledPseudoState | Returns true if this element matches the :disabled pseudo-class. |
| hasEnabledPseudoState | Returns true if this element matches the :enabled pseudo-class. |
| hasFocusPseudoState | Returns true if this element matches the :focus pseudo-class. |
| hasHoverPseudoState | Returns true if this element matches the :hover pseudo-class. |
| hasInactivePseudoState | Returns true if this element matches the :inactive pseudo-class. |
| hasRootPseudoState | Returns true if this element matches the :root pseudo-class. |
| hierarchy | Access to this element physical hierarchy |
| languageDirection | Indicates the directionality of the element's text. The value will propagate to the element's children. |
| layout | The position and size of the VisualElement relative to its parent, as computed by the layout system. (Read Only) |
| localBound | Returns a Rect representing the Axis-aligned Bounding Box (AABB) after applying the transform, but before applying the layout translation. |
| name | The name of this VisualElement. |
| paddingRect | The rectangle of the padding area of the element, in the local space of the element. |
| panel | The panel onto which this VisualElement is attached. |
| parent | The parent of this VisualElement. |
| pickingMode | Determines if this element can be the target of pointer events or picked by IPanel.Pick queries. |
| resolvedStyle | The final rendered style values of a visual element, as it's rendered in the current frame.(Read Only) |
| scaledPixelsPerPoint | Return the resulting scaling from the panel that considers the screen DPI and the customizable scaling factor, but not the transform scale of the element and its ancestors. See Panel.scaledPixelsPerPoint. This should only be called on elements that are part of a panel. |
| schedule | Retrieves the IVisualElementScheduler associated to this VisualElement. Use it to enqueue actions. |
| style | Sets the style values on a VisualElement. |
| styleSheets | Returns a VisualElementStyleSheetSet that manipulates style sheets attached to this element. |
| this[int] | Retrieves the child element at a specific index. |
| tooltip | Text to display inside an information box after the user hovers the element for a small amount of time. This is only supported in the Editor UI. |
| usageHints | A combination of hint values that specify high-level intended usage patterns for the VisualElement. This property can only be set when the VisualElement is not yet part of a Panel. Once part of a Panel, this property becomes effectively read-only, and attempts to change it will throw an exception. The specification of proper UsageHints drives the system to make better decisions on how to process or accelerate certain operations based on the anticipated usage pattern. Note that those hints do not affect behavioral or visual results, but only affect the overall performance of the panel and the elements within. It's advised to always consider specifying the proper UsageHints, but keep in mind that some UsageHints might be internally ignored under certain conditions (e.g. due to hardware limitations on the target platform). |
| userData | This property can be used to associate application-specific user data with this VisualElement. |
| viewDataKey | Used for view data persistence, such as tree expanded states, scroll position, or zoom level. |
| visible | Indicates whether or not this element should be rendered. |
| visualTreeAssetSource | Stores the asset reference, if the generated element is cloned from a VisualTreeAsset. |
| worldBound | Returns the axis-aligned bounding box of the element in panel coordinates after the cumulative transform from the IPanel root. |
| worldTransform | Returns a matrix that cumulates the following transformations (in order): Local scalingLocal rotationLocal translationLayout translationParent worldTransform (recursive definition - consider the identity matrix when there's no parent) |

### Public Methods

| Method | Description |
| --- | --- |
| AddItem | Adds an item to the existing tree. |
| AddToSelectionById | Adds an item to the current selection by id. |
| CollapseAll | Collapses all TreeView items, including children. |
| CollapseItem | Collapses the specified TreeView item. |
| ExpandAll | Expands all TreeView items, including children. |
| ExpandItem | Expands the specified TreeView item. |
| ExpandRootItems | Expands all root TreeView items. |
| GetChildrenIdsForIndex | Gets children identifiers for the specified TreeView item. |
| GetIdForIndex | Gets the specified TreeView item's identifier. |
| GetItemDataForId | Gets data for the specified TreeView item id. |
| GetItemDataForIndex | Gets data for the specified TreeView item index. |
| GetParentIdForIndex | Gets the specified TreeView item's parent identifier. |
| GetRootIds | Gets the root item identifiers. |
| GetSelectedItems | Gets tree data for the selected item indices. |
| GetTreeCount | Gets the TreeView's total number of items. |
| IsExpanded | Returns true if the specified TreeView item is expanded, false otherwise. |
| RemoveFromSelectionById | Removes an item from the current selection by id. |
| SetRootItems | Sets the root items to use with the default tree view controller. |
| SetSelectionById | Sets the currently selected item by id. |
| SetSelectionByIdWithoutNotify | Sets a collection of selected items by id, without triggering a selection change callback. |
| TryRemoveItem | Removes an item of the tree if it can find it. |
| AddToSelection | Adds an item to the collection of selected items. |
| ClearSelection | Deselects any selected items. |
| GetRootElementForId | Gets the root element of the specified collection view item. |
| GetRootElementForIndex | Gets the root element of the specified collection view item. |
| Rebuild | Clears the collection view, recreates all visible visual elements, and rebinds all items. |
| RefreshItem | Rebinds a single item if it is currently visible in the collection view. |
| RefreshItems | Rebinds all items currently visible. |
| RemoveFromSelection | Removes an item from the collection of selected items. |
| ScrollTo | Scrolls to a specific VisualElement. |
| ScrollToItem | Scrolls to a specific item index and makes it visible. |
| ScrollToItemById | Scrolls to a specific item id and makes it visible. |
| SetSelection | Sets the currently selected item. |
| SetSelectionWithoutNotify | Sets a collection of selected items without triggering a selection change callback. |
| HasBubbleUpHandlers | Return true if event handlers for the event propagation BubbleUp phase have been attached to this object. |
| HasTrickleDownHandlers | Returns true if event handlers, for the event propagation TrickleDown phase, are attached to this object. |
| RegisterCallback | Adds an event handler to the instance. |
| RegisterCallbackOnce | Adds an event handler to the instance. The event handler is automatically unregistered after it has been invoked exactly once. |
| UnregisterAllRemovableCallbacks | Removes all callbacks registered with CallbackOptions.Removable from the instance. |
| UnregisterCallback | Remove callback from the instance. |
| Blur | Tell the element to release the focus. |
| Focus | Attempts to give the focus to this element. |
| Add | Adds an element to the contentContainer of this element. |
| AddToClassList | Adds a class to the class list of the element in order to assign styles from USS. Note the class name is case-sensitive. |
| BringToFront | Brings this element to the end of its parent children list. The element will be visually in front of any overlapping sibling elements. |
| Children | Returns the elements from its contentContainer. |
| ClassListContains | Searches for a class in the class list of this element. |
| Clear | Remove all child elements from this element's contentContainer |
| ClearBinding | Removes a binding from the element. |
| ClearBindings | Removes all bindings from the element. |
| ClearClassList | Removes all classes from the class list of this element. AddToClassList |
| Contains | Checks if this element is an ancestor of the specified child element. |
| ContainsPoint | Checks if the specified point intersects with this VisualElement's layout. |
| ElementAt | Retrieves the child element at a specific index. |
| EnableInClassList | Enables or disables the class with the given name. |
| FindAncestorUserData | Searches up the hierarchy of this VisualElement and retrieves stored userData, if any is found. |
| FindCommonAncestor | Finds the lowest common ancestor between two VisualElements inside the VisualTree hierarchy. |
| GetBinding | Gets the binding instance for the provided targeted property. |
| GetBindingInfos | Gets information on all the bindings of the current element. |
| GetClasses | Retrieve the classes for this element. |
| GetDataSourceContext | Queries the dataSource and dataSourcePath of a binding object. |
| GetFirstAncestorOfType | Walks up the hierarchy, starting from this element's parent, and returns the first VisualElement of this type |
| GetFirstOfType | Walks up the hierarchy, starting from this element, and returns the first VisualElement of this type |
| GetHierarchicalDataSourceContext | Queries the dataSource and dataSourcePath inherited from the hierarchy. |
| HasBinding | Allows to know if a target property has a binding associated to it. |
| IndexOf | Retrieves the child index of the specified VisualElement. |
| Insert | Insert an element into this element's contentContainer |
| IsMarkedForRepaint | Checks if the VisualElement is marked dirty for repaint. |
| MarkDirtyRepaint | Marks that the VisualElement requires a repaint. |
| PlaceBehind | Places this element right before the sibling element in their parent children list. If the element and the sibling position overlap, the element will be visually behind of its sibling. |
| PlaceInFront | Places this element right after the sibling element in their parent children list. If the element and the sibling position overlap, the element will be visually in front of its sibling. |
| Remove | Removes this child from the hierarchy of its contentContainer. |
| RemoveAt | Removes a child, at the provided index, from the list of children of the current element. |
| RemoveFromClassList | Removes a class from the class list of the element. |
| RemoveFromHierarchy | Removes this element from its parent hierarchy. |
| SendEvent | Sends an event to the event handler. |
| SendToBack | Sends this element to the beginning of its parent children list. The element will be visually behind any overlapping sibling elements. |
| SetActivePseudoState | Sets whether or not this element is displayed as being active. |
| SetBinding | Assigns a binding between a target and a source. |
| SetCheckedPseudoState | Sets whether or not this element is displayed as being checked. |
| SetEnabled | Changes the VisualElement enabled state. A disabled visual element does not receive most events. |
| Sort | Reorders child elements from this VisualElement contentContainer. |
| ToggleInClassList | Toggles between adding and removing the given class name from the class list. |
| TryGetBinding | Gets the binding instance for the provided targeted property. |
| TryGetDataSourceContext | Queries the dataSource and dataSourcePath of a binding object. |
| TryGetLastBindingToSourceResult | Returns the last BindingResult of a binding object from the UI to the data source. |
| TryGetLastBindingToUIResult | Returns the last BindingResult of a binding object from the data source to the UI. |

### Protected Methods

| Method | Description |
| --- | --- |
| CreateViewController | Creates the view controller for this view. Override this method in inheritors to change the controller type. |
| HandleEventBubbleUp | Executes logic on this element during the BubbleUp phase, immediately before this element's BubbleUp callbacks. Calling StopPropagation will prevent further invocations of this method along the propagation path. |
| HandleEventTrickleDown | Executes logic on this element during the TrickleDown phase, immediately after this element's TrickleDown callbacks. Calling StopPropagation will prevent further invocations of this method along the propagation path. |
| NotifyPropertyChanged | Informs the data binding system that a property of a control has changed. |

### Events

| Event | Description |
| --- | --- |
| itemExpandedChanged | Raised when an item is expanded or collapsed. |
| canStartDrag | Called when a drag operation wants to start in this collection view. |
| dragAndDropUpdate | Called when a drag operation updates in this collection view. |
| handleDrop | Called when a drag operation is released in this collection view. |
| itemIndexChanged | Called when an item is moved in the itemsSource. |
| itemsChosen | Callback triggered when the user acts on a selection of one or more items, for example by double-clicking or pressing Enter. |
| itemsSourceChanged | Raised when the data source of a vertical collection view is assigned a new reference or new type. |
| onItemsChosen | Obsolete. Use BaseVerticalCollectionView.itemsChosen instead. |
| onSelectedIndicesChange | Obsolete. Use BaseVerticalCollectionView.selectedIndicesChanged instead. |
| onSelectionChange | Obsolete. Use BaseVerticalCollectionView.selectionChanged instead. |
| selectedIndicesChanged | Callback triggered when the selection changes. |
| selectionChanged | Callback triggered when the selection changes. |
| setupDragAndDrop | Called when a drag operation starts in this collection view. |
