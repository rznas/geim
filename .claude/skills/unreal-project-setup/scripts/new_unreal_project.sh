#!/usr/bin/env bash
# new_unreal_project.sh — scaffold a minimal C++ Unreal Engine 5.6/5.7 project.
#
# Writes the portable on-disk skeleton of a C++ UE project: a .uproject, one
# primary game module under Source/<Name>/ (Build.cs + the three .Target.cs +
# a Public/.h and Private/.cpp with IMPLEMENT_PRIMARY_GAME_MODULE), a Config/
# with the minimum ini files, an empty Content/ (tracked), and a UE .gitignore.
#
# This runs WITHOUT an engine installed — it only writes text files. It does NOT
# generate IDE project files, compile, or open the editor; for that you need
# Unreal Engine 5.7 + scripts/unreal.sh (gencproj / build / editor). Field
# shapes (.uproject JSON, .Build.cs / .Target.cs C#, the module macros) are
# doc-sourced from references/api/, not compile-tested here (no engine).
#
# Usage:
#   new_unreal_project.sh <project_dir> <ProjectName>
#     <ProjectName> must be a valid C++ identifier (letters/digits/_, no leading digit).
#
# After running, on a machine with UE installed:
#   scripts/unreal.sh gencproj -project="<dir>/<Name>.uproject" -game        # generate IDE files
#   scripts/unreal.sh build <Name>Editor Linux Development \
#       -project="<dir>/<Name>.uproject"                                     # compile the editor target
#   scripts/unreal.sh editor "<dir>/<Name>.uproject"                         # open it

set -euo pipefail

DIR="${1:?usage: new_unreal_project.sh <project_dir> <ProjectName>}"
NAME="${2:?usage: new_unreal_project.sh <project_dir> <ProjectName>}"

# UE module names must be valid C++ identifiers and are used to derive the
# *_API export macro (uppercased). Reject anything UBT/UHT would choke on.
if ! [[ "$NAME" =~ ^[A-Za-z_][A-Za-z0-9_]*$ ]]; then
  echo "error: ProjectName '$NAME' must be a valid C++ identifier (letters, digits, _; no leading digit)." >&2
  exit 2
fi

API_MACRO="$(printf '%s' "$NAME" | tr '[:lower:]' '[:upper:]')_API"

SRC="$DIR/Source/$NAME"
mkdir -p "$SRC/Public" "$SRC/Private" "$DIR/Config" "$DIR/Content"

# ---------------------------------------------------------------------------
# <Name>.uproject — the project descriptor. "Modules" lists the C++ modules UBT
# must build; a Blueprint-only project would omit Source/ and this Modules list.
# FileVersion 3 is the current descriptor version. EngineAssociation is left
# blank so the launcher/UBT resolves the engine at generate/build time.
# ---------------------------------------------------------------------------
cat > "$DIR/$NAME.uproject" <<EOF
{
	"FileVersion": 3,
	"EngineAssociation": "",
	"Category": "",
	"Description": "",
	"Modules": [
		{
			"Name": "$NAME",
			"Type": "Runtime",
			"LoadingPhase": "Default"
		}
	],
	"Plugins": [
		{
			"Name": "ModelingToolsEditorMode",
			"Enabled": true,
			"TargetAllowList": [ "Editor" ]
		}
	]
}
EOF

# ---------------------------------------------------------------------------
# Source/<Name>.Target.cs — the standalone Game target. Class name == file name
# minus ".cs" (so <Name>Target). ExtraModuleNames lists the project's primary
# module. (UBT: "the name of the class must match the name of the file it is
# declared in followed by 'Target'".)
# ---------------------------------------------------------------------------
cat > "$DIR/Source/$NAME.Target.cs" <<EOF
using UnrealBuildTool;
using System.Collections.Generic;

public class ${NAME}Target : TargetRules
{
	public ${NAME}Target(TargetInfo Target) : base(Target)
	{
		Type = TargetType.Game;
		DefaultBuildSettings = BuildSettingsVersion.V5;
		IncludeOrderVersion = EngineIncludeOrderVersion.Latest;
		ExtraModuleNames.Add("$NAME");
	}
}
EOF

# ---------------------------------------------------------------------------
# Source/<Name>Editor.Target.cs — the Editor target (extends the Unreal Editor).
# Builds the same game module plus editor-only code. Without this you cannot
# open the project in the editor with your C++ compiled in.
# ---------------------------------------------------------------------------
cat > "$DIR/Source/${NAME}Editor.Target.cs" <<EOF
using UnrealBuildTool;
using System.Collections.Generic;

public class ${NAME}EditorTarget : TargetRules
{
	public ${NAME}EditorTarget(TargetInfo Target) : base(Target)
	{
		Type = TargetType.Editor;
		DefaultBuildSettings = BuildSettingsVersion.V5;
		IncludeOrderVersion = EngineIncludeOrderVersion.Latest;
		ExtraModuleNames.Add("$NAME");
	}
}
EOF

# ---------------------------------------------------------------------------
# Source/<Name>.Build.cs — the module rules. EVERY C++ module needs one of these
# next to its source or UBT won't discover it. Class name == module name ==
# folder name. Core/CoreUObject/Engine are the baseline gameplay dependencies;
# InputCore + EnhancedInput cover input.
# ---------------------------------------------------------------------------
cat > "$SRC/$NAME.Build.cs" <<EOF
using UnrealBuildTool;

public class $NAME : ModuleRules
{
	public $NAME(ReadOnlyTargetRules Target) : base(Target)
	{
		PCHUsage = PCHUsageMode.UseExplicitOrSharedPCHs;

		PublicDependencyModuleNames.AddRange(new string[]
		{
			"Core",
			"CoreUObject",
			"Engine",
			"InputCore",
			"EnhancedInput"
		});

		PrivateDependencyModuleNames.AddRange(new string[] { });
	}
}
EOF

# ---------------------------------------------------------------------------
# Source/<Name>/Public/<Name>.h — primary module header.
# ---------------------------------------------------------------------------
cat > "$SRC/Public/$NAME.h" <<EOF
#pragma once

#include "CoreMinimal.h"
EOF

# ---------------------------------------------------------------------------
# Source/<Name>/Private/<Name>.cpp — the module implementation file. The PRIMARY
# game module of a project uses IMPLEMENT_PRIMARY_GAME_MODULE (exactly one per
# game); secondary/plugin modules use IMPLEMENT_MODULE / IMPLEMENT_GAME_MODULE.
# The third argument is the default game-module name string.
# ---------------------------------------------------------------------------
cat > "$SRC/Private/$NAME.cpp" <<EOF
#include "$NAME.h"
#include "Modules/ModuleManager.h"

IMPLEMENT_PRIMARY_GAME_MODULE(FDefaultGameModuleImpl, $NAME, "$NAME");
EOF

# ---------------------------------------------------------------------------
# Config/ — minimum ini files. Values here override Engine/Config defaults.
# DefaultEngine.ini sets the game/render mode basics; the others must exist
# (empty is fine) for a clean first open. EnhancedInput is registered as the
# default input class so the EnhancedInput dependency above is actually used.
# ---------------------------------------------------------------------------
cat > "$DIR/Config/DefaultEngine.ini" <<EOF
[/Script/Engine.Engine]
+ActiveGameNameRedirects=(OldGameName="/Script/${NAME}",NewGameName="/Script/${NAME}")

[/Script/EngineSettings.GameMapsSettings]
GameDefaultMap=/Engine/Maps/Templates/OpenWorld

[/Script/Engine.InputSettings]
DefaultPlayerInputClass=/Script/EnhancedInput.EnhancedPlayerInput
DefaultInputComponentClass=/Script/EnhancedInput.EnhancedInputComponent
EOF

cat > "$DIR/Config/DefaultGame.ini" <<EOF
[/Script/EngineSettings.GeneralProjectSettings]
ProjectName=$NAME
EOF

cat > "$DIR/Config/DefaultInput.ini" <<EOF
[/Script/Engine.InputSettings]
EOF

# ---------------------------------------------------------------------------
# Content/ MUST be committed (binary .uasset/.umap), so keep the empty dir under
# version control with a .gitkeep. The .gitignore below does NOT ignore Content/.
# ---------------------------------------------------------------------------
touch "$DIR/Content/.gitkeep"

# ---------------------------------------------------------------------------
# .gitignore — Saved/ Intermediate/ Binaries/ DerivedDataCache/ are all
# regenerated by UBT/the editor and must NOT be committed. Content/, Config/,
# Source/, and the .uproject are the project; commit those.
# ---------------------------------------------------------------------------
GITIGNORE_SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/assets/unreal.gitignore"
if [[ -f "$GITIGNORE_SRC" ]]; then
  cp "$GITIGNORE_SRC" "$DIR/.gitignore"
else
  # Fallback inline copy if assets/ is not alongside the script.
  cat > "$DIR/.gitignore" <<'EOF'
# Unreal Engine generated/derived directories — never commit these.
Binaries/
Build/
DerivedDataCache/
Intermediate/
Saved/
.vs/
.vscode/
*.VC.db
*.opensdf
*.sdf
*.sln
*.suo
*.xcodeproj
*.xcworkspace
EOF
fi

echo "Scaffolded C++ UE 5.6/5.7 project '$NAME' in: $DIR"
echo "  .uproject:       $NAME.uproject"
echo "  primary module:  Source/$NAME/ (Build.cs + ${API_MACRO} ready, IMPLEMENT_PRIMARY_GAME_MODULE)"
echo "  targets:         Source/$NAME.Target.cs, Source/${NAME}Editor.Target.cs"
echo "  config:          Config/Default{Engine,Game,Input}.ini"
echo "  content:         Content/ (tracked, commit .uasset binaries here)"
echo
echo "Next (needs UE 5.7 installed + \$UE_ROOT set):"
echo "  scripts/unreal.sh gencproj -project=\"$DIR/$NAME.uproject\" -game"
echo "  scripts/unreal.sh build ${NAME}Editor Linux Development -project=\"$DIR/$NAME.uproject\""
echo "  scripts/unreal.sh editor \"$DIR/$NAME.uproject\""
