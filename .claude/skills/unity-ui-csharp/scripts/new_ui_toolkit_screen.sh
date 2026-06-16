#!/usr/bin/env bash
# new_ui_toolkit_screen.sh — scaffold a UI Toolkit (UXML + USS + C#) screen.
#
# Writes three files into a Unity project's Assets/ tree:
#   <ScreenName>.uxml   — the markup (a title Label + Play/Quit Buttons + status Label)
#   <ScreenName>.uss     — basic styling, linked from the UXML <Style> tag
#   <ScreenName>.cs       — a MonoBehaviour controller that, in OnEnable, reads
#                           UIDocument.rootVisualElement and wires the buttons via
#                           root.Q<Button>("name").clicked += ...
#
# This writes FILES ONLY (no .meta, no scene). In the Editor: add the UIDocument
# component to a GameObject, assign a PanelSettings asset + the generated .uxml as
# its Source Asset, then add <ScreenName>.cs to the SAME GameObject. The controller
# reads the document the UIDocument loaded for you.
#
# Idioms verified against references/api/UIElements.UIDocument.md and
# references/api/UIElements.Button.md (Unity 6 / 6000.x). Doc-sourced, not
# compile-tested (no Editor installed).
#
# Usage:
#   new_ui_toolkit_screen.sh <projectDir> <ScreenName>
# Example:
#   new_ui_toolkit_screen.sh ./MyGame MainMenu
#     -> ./MyGame/Assets/UI/MainMenu.uxml
#        ./MyGame/Assets/UI/MainMenu.uss
#        ./MyGame/Assets/UI/MainMenu.cs

set -euo pipefail

if [[ $# -ne 2 ]]; then
  echo "usage: $0 <projectDir> <ScreenName>" >&2
  echo "  ScreenName must be a valid C# identifier (e.g. MainMenu, PauseScreen)" >&2
  exit 2
fi

PROJ="$1"
NAME="$2"

if ! [[ "$NAME" =~ ^[A-Za-z_][A-Za-z0-9_]*$ ]]; then
  echo "error: ScreenName '$NAME' is not a valid C# identifier." >&2
  exit 2
fi

OUTDIR="$PROJ/Assets/UI"
mkdir -p "$OUTDIR"

UXML="$OUTDIR/$NAME.uxml"
USS="$OUTDIR/$NAME.uss"
CS="$OUTDIR/$NAME.cs"

# Lowercase element names ("play-button") are the convention for UI Toolkit;
# USS selectors and C# Q<T>("...") lookups must match these names EXACTLY.

cat > "$UXML" <<UXML_EOF
<?xml version="1.0" encoding="utf-8"?>
<ui:UXML xmlns:ui="UnityEngine.UIElements" editor-extension-mode="False">
    <!-- Link the stylesheet so USS selectors below resolve at load time. -->
    <Style src="$NAME.uss" />
    <ui:VisualElement name="root" class="screen">
        <ui:Label name="title-label" text="$NAME" class="title" />
        <ui:Button name="play-button" text="Play" class="menu-button" />
        <ui:Button name="quit-button" text="Quit" class="menu-button" />
        <ui:Label name="status-label" text="" class="status" />
    </ui:VisualElement>
</ui:UXML>
UXML_EOF

cat > "$USS" <<'USS_EOF'
/* Selectors: .class match a USS class; #name matches an element name;
   Button matches by type. Names/classes must match the UXML exactly. */
.screen {
    flex-grow: 1;
    align-items: center;
    justify-content: center;
    background-color: rgb(24, 24, 28);
}

.title {
    font-size: 48px;
    color: rgb(240, 240, 240);
    margin-bottom: 24px;
    -unity-text-align: middle-center;
}

.menu-button {
    width: 220px;
    height: 48px;
    margin: 6px;
    font-size: 20px;
    color: rgb(240, 240, 240);
    background-color: rgb(48, 48, 56);
    border-radius: 6px;
    border-width: 0;
}

.menu-button:hover {
    background-color: rgb(72, 72, 84);
}

.status {
    margin-top: 16px;
    font-size: 16px;
    color: rgb(160, 160, 170);
}
USS_EOF

cat > "$CS" <<CS_EOF
using UnityEngine;
using UnityEngine.UIElements;

// Attach this to the SAME GameObject that has the UIDocument component.
// UIDocument requires this component (added automatically by [RequireComponent]).
[RequireComponent(typeof(UIDocument))]
public class $NAME : MonoBehaviour
{
    private UIDocument _document;
    private Button _playButton;
    private Button _quitButton;
    private Label _statusLabel;

    // UI Toolkit gotcha: query AFTER the document has loaded its visual tree.
    // OnEnable runs after UIDocument has built rootVisualElement, so it is the
    // canonical place to Q<T>() and wire callbacks.
    private void OnEnable()
    {
        _document = GetComponent<UIDocument>();
        VisualElement root = _document.rootVisualElement;

        // Q<T>("name") finds an element by name; returns null if it isn't found.
        _playButton  = root.Q<Button>("play-button");
        _quitButton  = root.Q<Button>("quit-button");
        _statusLabel = root.Q<Label>("status-label");

        // Button fires the 'clicked' event (NOT uGUI's onClick).
        if (_playButton != null) _playButton.clicked += OnPlayClicked;
        if (_quitButton != null) _quitButton.clicked += OnQuitClicked;
    }

    // Always unregister to avoid double-wiring if the document re-enables.
    private void OnDisable()
    {
        if (_playButton != null) _playButton.clicked -= OnPlayClicked;
        if (_quitButton != null) _quitButton.clicked -= OnQuitClicked;
    }

    private void OnPlayClicked()
    {
        if (_statusLabel != null) _statusLabel.text = "Play clicked";
        // TODO: load gameplay scene, etc.
    }

    private void OnQuitClicked()
    {
        if (_statusLabel != null) _statusLabel.text = "Quit clicked";
        // TODO: Application.Quit() in a build.
    }
}
CS_EOF

echo "Scaffolded UI Toolkit screen '$NAME':"
echo "  $UXML"
echo "  $USS"
echo "  $CS"
echo ""
echo "Next (in the Editor): add a UIDocument component to a GameObject, assign a"
echo "PanelSettings asset and '$NAME.uxml' as its Source Asset, then add '$NAME.cs'"
echo "to the SAME GameObject."
