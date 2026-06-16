<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.DropdownField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A control that allows the user to pick a choice from a list of options. For more information, refer to UXML element DropdownField.

### Constructors

| Constructor | Description |
| --- | --- |
| DropdownField | Construct an empty DropdownField. |

### Inherited Members

### Static Properties

| Property | Description |
| --- | --- |
| alignedFieldUssClassName | USS class name of elements that are aligned in a inspector element |
| labelDraggerVariantUssClassName | USS class name of labels in elements of this type, when there is a dragger attached on them. |
| mixedValueLabelUssClassName | USS class name of elements that show mixed values |
| noLabelVariantUssClassName | USS class name of elements of this type, when there is no label. |
| arrowUssClassName | USS class name of arrow indicators in elements of this type. |
| textUssClassName | USS class name of text elements in elements of this type. |
| inputUssClassName | USS class name of input elements in elements of this type. |
| labelUssClassName | USS class name of labels in elements of this type. |
| ussClassName | USS class name of elements of this type. |
| disabledUssClassName | USS class name of local disabled elements. |

### Properties

| Property | Description |
| --- | --- |
| label | The string representing the label that will appear beside the field. If the string is empty, the label element is removed from the hierarchy. If the string is not empty, the label element is added to the hierarchy. |
| labelElement | This is the Label object that appears beside the input for the field. |
| mixedValueLabel | Read-only label used to give the appearance of editing multiple different values. |
| rawValue | The value of the element. |
| showMixedValue | When set to true, gives the field the appearance of editing multiple different values. |
| choices | The list of choices to display in the popup menu. |
| text | This is the text displayed to the user for the current selection of the popup. |
| textElement | This is the text displayed. |
| binding | Binding object that will be updated. |
| bindingPath | Path of the target property to be bound. |
| canGrabFocus | Whether the element can be focused. |
| delegatesFocus | Whether the element delegates the focus to its children. |
| focusable | Whether an element can potentially receive focus. |
| focusController | Returns the focus controller for this element. |
| tabIndex | An integer used to sort focusable elements in the focus ring. Must be greater than or equal to zero. |
| formatListItemCallback | Callback that provides a string representation used to populate the popup menu. |
| formatSelectedValueCallback | Callback that provides a string representation used to display the selected value. |
| index | The currently selected index in the popup menu. Setting the index updates the value field and sends a property change notification. |
| value | The currently selected value in the popup menu. |
| childCount | Number of child elements in this object's contentContainer. |
| contentContainer | Logical container where child elements are added. If a child is added to this element, the child is added to this element's content container instead. |
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
| SetValueWithoutNotify | Allow changing value without triggering any change event. |
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
| UpdateMixedValueContent | Update the field's visual content depending on showMixedValue. |
| HandleEventBubbleUp | Executes logic on this element during the BubbleUp phase, immediately before this element's BubbleUp callbacks. Calling StopPropagation will prevent further invocations of this method along the propagation path. |
| HandleEventTrickleDown | Executes logic on this element during the TrickleDown phase, immediately after this element's TrickleDown callbacks. Calling StopPropagation will prevent further invocations of this method along the propagation path. |
| NotifyPropertyChanged | Informs the data binding system that a property of a control has changed. |
