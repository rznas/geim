<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.VisualElement-contentContainer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Logical container where child elements are added. If a child is added to this element, the child is added to this element's content container instead.

When iterating over the VisualElement.Children of an element, the element's content container hierarchy is used instead of the element itself. This can lead to unexpected results, such as elements being ignored by the navigation events if they are not directly in the content container's hierarchy. Refer to IFocusRing for more information.

 If the content container is the same as the element itself, child elements are added directly to the element. This is true for most elements but can be overridden by more complex types.

 The ScrollView, for example, has a content container that is different from itself. In that case, child elements added to the scroll view are added to its content container element instead. While the physical parent (VisualElement.Hierarchy.parent) of the child elements is the scroll view's content container element, their logical parent (VisualElement.parent) still refers to the scroll view itself. Since some of the scroll view's focusable children are not part of its logical hierarchy, like its Scroller elements, these focusable children are not considered by default when using sequential navigation. Refer to How can I change what element is focused next for an example of a workaround solution if the default navigation rules don't correspond to your needs. 

Additional resources: VisualElement.hierarchy, VisualElement.Children
