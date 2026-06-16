<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/UIE-USS-Selectors-multiple.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Multiple selectors

A multiple selector is an combination of multiple simple selectors. It selects any elements that match all the simple selectors.

## Syntax

A multiple selector consists of multiple simple selector without anything to separate them:

```
selector1selector2 {...}
```

The USS parser can’t parse a multiple selector if it can’t distinguish each selector in the combination.

For example, the following USS rule combines two type selectors: `ListView`, and `Button`.

```
ListViewButton{...}
```

The USS parser can’t separate the two element types, it interprets them as a single class called ListViewButton, which might not be the desired result.

You can combine USS class selectors and name selectors into multiple selectors. Because they’re are with the period (.) and number sign (#) respectively, the parser can clearly identify them. Type selectors have no identifying character, so you can only use one of them in a multiple selector, and it must be the first selector in the combination. For example:

```
ListView.yellow#vertical-list{...}
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

The following name selector style rule matches the first button.

```
Button.yellow {
  background-color: yellow;
}
```

The UI looks like the following when you apply the style:

## Additional resources

- Best practices for USS
