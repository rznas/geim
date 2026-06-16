<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/UIE-create-custom-controls.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Create a custom control

A good custom control is abstract, self-contained, and recurring.

A Slide Toggle is a good example of a custom control:

- It’s abstract. You can use it to adjust settings, such as volume, brightness, scale, and power.
- It’s self-contained. You give it a label and an initial value. A Slide Toggle triggers an event when its state changes.
- It’s recurring. You can use it in multiple places in an application.

The menu bar of your application isn’t a good example of a custom control:

- It’s not abstract. It’s specific to your application.
- It’s not self-contained. It probably has dependencies on other parts of your application.
- It’s not recurring. There is probably only one menu in your application.

After you have created a custom control, you can style it with USS and add logic to handle events in C#.

## Create and use a custom control

To create a custom control, do the following:

- Add the `UxmlElement` attribute to the custom control class definition.
- Declare the custom control class as a partial class.
- Inherit it from `VisualElement` or one of its derived classes.

For example:

```csharp
using UnityEngine;
using UnityEngine.UIElements;

[UxmlElement]
public partial class ExampleElement : VisualElement {}
```

You can use your custom controls in UXML and UI Builder after you create them.

The following example UXML document uses the custom control:

```
<ui:UXML xmlns:ui="UnityEngine.UIElements">
    <ExampleElement />
</ui:UXML>
```

By default, the custom control appears in the Library tab in UI Builder. If you want to hide it from the Library tab, add the `HideInInspector` attribute.

## Initialize a custom control

Custom controls inherit from `VisualElement`. A `VisualElement` isn’t a MonoBehaviour and therefore doesn’t receive any of the callbacks that a MonoBehaviour receives, such as `Awake()`, `OnEnable()`, `OnDisable()`, and `OnDestroy()`.

You can initialize a custom control in its constructor. However, if your application needs it, you can delay initialization until the custom control is added to the UI. To do this, register a callback for an `AttachToPanelEvent`. To detect that your custom control has been removed from the UI, use the `DetachFromPanelEvent` callback.

```
public CustomControl()
{
    RegisterCallback<AttachToPanelEvent>(e =>
        { /* do something here when element is added to UI */ });
    RegisterCallback<DetachFromPanelEvent>(e =>
        { /* do something here when element is removed from UI */ });
}
```

UI Toolkit dispatches these two events for all elements and doesn’t need a custom `VisualElement` subclass. For more information, refer to Panel events.

## Style custom controls with USS

Use USS to customize the look of a custom control the same way as a built-in control. You can also create USS custom properties to style a custom control.

**Note**: The **Inspector** window in the UI Builder doesn’t show USS custom properties. To edit USS custom properties, use a text editor to edit your USS file directly.

To interact with custom USS properties for a custom control in C#, use the `CustomStyleProperty` structure and the `CustomStylesResolvedEvent` event.

`CustomStyleProperty` describes the name and type of property you read from the stylesheet.

UI Toolkit dispatches `CustomStylesResolvedEvent` for any element that directly receives a custom USS property. It dispatches the event for any element that a selector matches, for selectors where the rule contains the value of the custom property. UI Toolkit doesn’t dispatch the event for elements that inherit the value. The event holds a reference to an `ICustomStyle` object. You must use its `TryGetValue()` method to read the effective value of a `CustomStyleProperty`. This method has overloads for different types of `CustomStyleProperty`.

For a custom style with a custom control example, refer to Create custom style for a custom control.

**Note**: You can’t define transitions for custom style properties.

## Handle events for custom controls

For detailed information on how to handle events for custom controls, refer to Handle events.

**Note**:

- Unity dispatches keyboard events to the currently focused element. To handle keyboard events for a custom control, set properties related to `focus`.
- To handle touch and mouse input events, register callbacks for the relevant event types, such as pointer events and mouse events, in the constructor.

## Best practices and tips

- Expose properties that a custom control represents and other functional aspects of its behavior as UXML properties, and expose properties that affect the look of a custom control as USS properties.
- Use a namespace that’s unique, short, and readable to avoid name **collisions** with other elements.
- Keep UXML attributes primitive. Data that you can specify in UXML is limited to a set of primitive data types. UXML doesn’t support complex data structures or collections. Pass complex data to your custom controls at runtime via C# **scripts** or data binding, not in UXML.
- In C#, expose USS classes or names as constants. This allows you to locate elements by class or name using UQuery.
- Adopt the [BEM standard](https://sparkbox.com/foundry/bem_by_example) for USS classes. This allows you to address every element with a class list selector.
- Use static callbacks for a lower memory footprint. When you register an instance method to be used as a callback, you might create unnecessary allocations. To avoid allocations, use anonymous static lambda functions that call into regular C# static methods. You can retrieve the context of the current element through the `EventBase.currentTarget` property.
- Render custom geometry through the `generateVisualContent` callback for custom controls. For an example usage that renders a partially filled circle, refer to the RadialProgress example.
- Custom controls are convenient. However, you might achieve the same outcomes with the following:
  - Assemble your UI from existing elements, and change their styles and properties.
  - Use UXML templates. Use regular C# `MonoBehaviour`s to add logic that pertains to the specific UI Document that holds your UI. To learn how to use `MonoBehaviour`s to control UI in a UI Document, refer to Create your first runtime UI. To achieve encapsulation, create properties and methods inside your `MonoBehaviour` that internally fetch `VisualElement`s with UQuery and manipulate their properties.

## Additional resources

- Create custom control examples
