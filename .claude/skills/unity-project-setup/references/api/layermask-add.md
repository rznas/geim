<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/layermask-add.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Add a layer to a layerMask

To add a layer to a layermask, use the [logical OR operator](https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/operators/bitwise-and-shift-operators#logical-or-operator-) on the original layermask and the layer to add.

```
originalLayerMask |= (1 << layerToAdd);
```

## Additional resources

- Set a layermask
- Remove a layer from a layermask
