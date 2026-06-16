<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/UIE-USS-Selectors-child.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Child selectors

USS child selectors match elements that are the child of another element in the visual tree.

## Syntax

A child selector consists of multiple simple selectors separated by `>`.

```
selector1 > selector2 {...}
```

You can include the wildcard selector in complex selectors. For example, the following USS rule uses the wildcard selector in a child selector. This USS rule matches buttons that are children of elements that are children of an element with the USS class `yellow` assigned to it.

```
.yellow > * > Button{..}
```

**Note**: USS doesn’t support selecting the nth child of elements with the same name. Use class selectors or unique element names instead.

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

The following child selector style rule matches only the inner element. Element `#OK` with the `.yellow` class is a child of element `#container2`. `#container2` is child of element `#container1`. However, because `#OK` is not a direct descendant of `#container1`, it doesn’t match the `.yellow` selector when applied with a child selector from `#container1`.

```
#container1 > .yellow {
  background-color: yellow;
}
```

The UI looks like the following when you apply the style:

## Additional resources

- Best practices for USS
