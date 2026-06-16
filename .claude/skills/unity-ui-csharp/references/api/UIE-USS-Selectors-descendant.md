<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/UIE-USS-Selectors-descendant.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Descendant selectors

USS descendant selectors match elements that are the descendant of another element in the visual tree.

## Syntax

A descendant selector consists of multiple simple selectors separated by a space:

```
selector1 selector2 {...}
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

The following descendant selector style rule matches both the inner element and the first button.

```
#container1 .yellow {
  background-color: yellow;
}
```

The UI looks like the following when you apply the style:

**Note**: Heavy use of descendant selectors could negatively affect performance. For more performance guidelines, see Best practices for USS.

## Additional resources

- Best practices for USS
