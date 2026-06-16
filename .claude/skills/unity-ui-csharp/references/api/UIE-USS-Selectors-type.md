<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/UIE-USS-Selectors-type.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Type selectors

USS type selectors match elements based on their element types. USS type selectors are analogous to CSS type selectors that match HTML tags. For example, `Button {...}` in USS matches any Button elements in the same way that `p {...}` in CSS matches any paragraph (`<p>`) tag.

## Syntax

The following is the syntax for a type selector:

```
TypeName { ... }
```

When you write type selectors, specify only the concrete object type. Don’t include the namespace in the type name.

For example, this selector is valid:

```
Button { ... }
```

This selector is invalid:

```
UnityEngine.UIElements.Button { ... }
```

## Example

To demonstrate how simple selectors match elements, here is an example UI Document.

```
<UXML xmlns="UnityEngine.UIElements">
  <VisualElement name="container1">
    <VisualElement name="container2" class="yellow">
      <Button name="OK" class="yellow" text="OK" />
      <Button name="Cancel" text="Cancel" />
    </VisualElement>
  </VisualElement>
</UXML>
```

With no styles applied, the UI looks like the following:

The following type selector style rule matches the two `Button` elements:

```
Button {
  border-radius: 8px;
  width: 100px;
  }
```

The UI looks like the following when you apply the style:

## Additional resources

- Best practices for USS
