<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/UIE-bind-custom-control-to-data.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Bind custom controls to data

You bind custom controls to serialized properties to synchronize values between the control and the property. You can create a bindable custom control derived from the `BaseField` generic base class instead of `BindableElement`. This provides the following advantages:

- Implements the `INotifyValueChanged` interface for the generic parameter type that you specify.
- Makes the control focusable by default.
- Provides a horizontal layout with a label element on the left and input on the right.

**Note**: It’s possible to create custom controls derived from built-in UI controls if you understand their internal hierarchy and existing USS classes. Unity discourages this practice because your custom controls might be dependent on their internal structure, which is subject to change in the future.

To bind custom controls to data:

- Implement the `INotifyValueChanged` interface and listen for `ChangeEvent`s as needed.
- Inherit from the `BindableElement` class or implement the `IBindable` interface.

Refer to SerializedObject data binding for more details.

For a bindable custom control example, refer to Create a bindable custom control.

## Additional resources

- Create custom controls
- SerializedObject data binding
- Create a bindable custom control
