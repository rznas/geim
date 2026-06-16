<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.MinMaxSlider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A min/max slider containing a representation of a range. For more information, refer to UXML element MinMaxSlider.

The MinMaxSlider manages navigation events in a customized manner. The MinMaxSlider has four navigation states:

- Min thumb: adjusts the slider's minimum value if the NavigationMoveEvent aligns with the slider's direction.
- Max thumb: adjusts the slider's maximum value if the NavigationMoveEvent aligns with the slider's direction.
- Middle thumb: adjusts the slider's minimum and maximum values if the NavigationMoveEvent aligns with the slider's direction.
- Default navigation: NavigationMoveEvent are ignored and handled by the default systems.

The MinMaxSlider cycles through the navigation states when a NavigationSubmitEvent is received. 

 Additional resources: Slider

### Static Properties

| Property | Description |
| --- | --- |
| draggerUssClassName | USS class name of dragger elements in elements of this type. |
| inputUssClassName | USS class name of input elements in elements of this type. |
| labelUssClassName | USS class name of labels in elements of this type. |
| maxThumbUssClassName | USS class name of the maximum thumb elements in elements of this type. |
| minThumbUssClassName | USS class name of the minimum thumb elements in elements of this type. |
| movableUssClassName | USS class name of the element that is currently controlled by NavigationMoveEvent. When a NavigationSubmitEvent is received the slider cycles through the elements in the following order: 1. Minimum thumb. 2. Maximum thumb. 3. Middle bar. 4. None (Default Navigation behavior). |
| trackerUssClassName | USS class name of tracker elements in elements of this type. |
| ussClassName | USS class name of elements of this type. |

### Properties

| Property | Description |
| --- | --- |
| highLimit | This is the high limit of the slider. |
| lowLimit | This is the low limit of the slider. |
| maxValue | This is the high value of the range represented on the slider. |
| minValue | This is the low value of the range represented on the slider. |
| range | Returns the range of the low/high limits of the slider. |
| value | This is the value of the slider. This is a Vector2 where the x is the lower bound and the y is the higher bound. |

### Constructors

| Constructor | Description |
| --- | --- |
| MinMaxSlider | Constructor. |

### Inherited Members

### Static Properties

| Property | Description |
| --- | --- |
| alignedFieldUssClassName | USS class name of elements that are aligned in a inspector element |
| inputUssClassName | USS class name of input elements in elements of this type. |
| labelDraggerVariantUssClassName | USS class name of labels in elements of this type, when there is a dragger attached on them. |
| labelUssClassName | USS class name of labels in elements of this type. |
| mixedValueLabelUssClassName | USS class name of elements that show mixed values |
| noLabelVariantUssClassName | USS class name of elements of this type, when there is no label. |
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
| value | The value associated with the field. |
| binding | Binding object that will be updated. |
| bindingPath | Path of the target property to be bound. |
| canGrabFocus | Whether the element can be focused. |
| delegatesFocus | Whether the element delegates the focus to its children. |
| focusable | Whether an element can potentially receive focus. |
| focusController | Returns the focus controller for this element. |
| tabIndex | An integer used to sort focusable elements in the focus ring. Must be greater than or equal to zero. |
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
| SetValueWithoutNotify | Allow to set a value without being notified of the change, if any. |
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
