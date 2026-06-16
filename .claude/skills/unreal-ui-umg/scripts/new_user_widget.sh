#!/usr/bin/env bash
# new_user_widget.sh — scaffold a UUserWidget C++ subclass (.h/.cpp) for UMG.
#
# Generates the C++ *parent* of a Widget Blueprint: a UUserWidget subclass with
#   - a UPROPERTY(meta=(BindWidget)) UButton*    (name MUST match a widget you
#     place in the Widget Blueprint designer, or it is null at runtime)
#   - a UPROPERTY(meta=(BindWidget)) UTextBlock*
#   - NativeConstruct() that binds the button's OnClicked delegate
#   - the OnClicked UFUNCTION handler that updates the TextBlock (FText)
#
# You still author the *visual* widget in-editor: create a Widget Blueprint,
# reparent it to this class, and name a Button "<Prefix>Button" + a TextBlock
# "<Prefix>Label" so the BindWidget pointers resolve. See SKILL.md.
#
# Files only — does NOT compile (no engine here). Requires the UI modules in your
# .Build.cs: "UMG" (public), "Slate","SlateCore" (private). See references/.
#
# Usage:
#   new_user_widget.sh <ModuleDir> <WidgetClassName> [ModuleApiMacro] [Prefix]
#     <ModuleDir>        e.g. Source/MyGame   (dir holding the .Build.cs / *.h)
#     <WidgetClassName>  e.g. MainMenuWidget  (NO leading U; class becomes U<Name>)
#     [ModuleApiMacro]   e.g. MYGAME_API      (default: derived from module dir)
#     [Prefix]           widget-name prefix   (default: Menu) -> MenuButton/MenuLabel
#
# Example:
#   scripts/new_user_widget.sh Source/MyGame MainMenuWidget MYGAME_API Menu

set -euo pipefail

if [[ $# -lt 2 ]]; then
  echo "usage: new_user_widget.sh <ModuleDir> <WidgetClassName> [ModuleApiMacro] [Prefix]" >&2
  exit 2
fi

MODULE_DIR="$1"
RAW_NAME="$2"
# strip a leading U if the caller passed one
CLASS_BASE="${RAW_NAME#U}"
CLASS="U${CLASS_BASE}"

MODULE_NAME="$(basename "$MODULE_DIR")"
API_MACRO="${3:-$(echo "$MODULE_NAME" | tr '[:lower:]' '[:upper:]')_API}"
PREFIX="${4:-Menu}"

mkdir -p "$MODULE_DIR"
HDR="${MODULE_DIR}/${CLASS_BASE}.h"
SRC="${MODULE_DIR}/${CLASS_BASE}.cpp"

if [[ -e "$HDR" || -e "$SRC" ]]; then
  echo "refusing to overwrite existing ${CLASS_BASE}.h/.cpp in ${MODULE_DIR}" >&2
  exit 1
fi

cat > "$HDR" <<EOF
// ${CLASS_BASE}.h — UUserWidget C++ parent for a Widget Blueprint.
// Author the visual layout in a Widget Blueprint reparented to this class.
// The BindWidget pointers below resolve by NAME: the designer must contain a
// UButton named "${PREFIX}Button" and a UTextBlock named "${PREFIX}Label", or
// they are nullptr at runtime (and the editor reports the missing bind).
#pragma once

#include "CoreMinimal.h"
#include "Blueprint/UserWidget.h"
#include "${CLASS_BASE}.generated.h"

class UButton;
class UTextBlock;

UCLASS()
class ${API_MACRO} ${CLASS} : public UUserWidget
{
    GENERATED_BODY()

protected:
    // Called when the underlying Slate widget is constructed — bind events here.
    virtual void NativeConstruct() override;

    // meta=(BindWidget): the property NAME must exactly match the widget placed
    // in the Widget Blueprint designer. Mismatch == nullptr at runtime.
    UPROPERTY(meta = (BindWidget))
    TObjectPtr<UButton> ${PREFIX}Button;

    UPROPERTY(meta = (BindWidget))
    TObjectPtr<UTextBlock> ${PREFIX}Label;

    // OnClicked handler. Must be a UFUNCTION to bind to the dynamic delegate.
    UFUNCTION()
    void On${PREFIX}ButtonClicked();

private:
    int32 ClickCount = 0;
};
EOF

cat > "$SRC" <<EOF
// ${CLASS_BASE}.cpp
#include "${CLASS_BASE}.h"
#include "Components/Button.h"
#include "Components/TextBlock.h"

void ${CLASS}::NativeConstruct()
{
    Super::NativeConstruct();

    // Guard the bind: a name mismatch in the designer leaves these null.
    if (${PREFIX}Button)
    {
        // OnClicked is a multicast dynamic delegate; AddDynamic takes a UFUNCTION.
        ${PREFIX}Button->OnClicked.AddDynamic(this, &${CLASS}::On${PREFIX}ButtonClicked);
    }

    if (${PREFIX}Label)
    {
        // User-facing text MUST be FText (localizable), not FString.
        ${PREFIX}Label->SetText(NSLOCTEXT("${MODULE_NAME}", "${PREFIX}LabelInitial", "Click me"));
    }
}

void ${CLASS}::On${PREFIX}ButtonClicked()
{
    ++ClickCount;

    if (${PREFIX}Label)
    {
        // FText::Format keeps the string localizable; {0} is the ordered arg.
        const FText Fmt = NSLOCTEXT("${MODULE_NAME}", "${PREFIX}LabelClicked", "Clicked {0}x");
        ${PREFIX}Label->SetText(FText::Format(Fmt, FText::AsNumber(ClickCount)));
    }
}
EOF

echo "Wrote:"
echo "  $HDR"
echo "  $SRC"
echo
echo "Next steps (in-editor — these files are the C++ parent only):"
echo "  1. Ensure your .Build.cs has: PublicDependencyModuleNames += \"UMG\";"
echo "     PrivateDependencyModuleNames += { \"Slate\", \"SlateCore\" };"
echo "  2. Compile, then create a Widget Blueprint reparented to ${CLASS}."
echo "  3. In the designer add a Button named '${PREFIX}Button' and a"
echo "     TextBlock named '${PREFIX}Label' (names must match exactly)."
echo "  4. CreateWidget<${CLASS}>(...) + AddToViewport() to show it. See SKILL.md."
