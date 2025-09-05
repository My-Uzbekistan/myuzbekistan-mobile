#!/bin/bash

set -e

MODULES_DIR="modules"

function run_build_runner() {
  local dir="$1"
  if grep -q "build_runner" "$dir/pubspec.yaml"; then
    echo "🚀 Running build_runner for $dir..."
    cd "$dir"
    flutter pub get
    flutter pub run build_runner build --delete-conflicting-outputs
    cd - > /dev/null
  else
    echo "⏩ Skipping $dir (no build_runner dependency)"
  fi
}

for module in "$MODULES_DIR"/*; do
  if [ -d "$module" ]; then
    if [ "$(basename "$module")" = "features" ]; then
      for feature in "$module"/*; do
        if [ -d "$feature" ]; then
          run_build_runner "$feature"
        fi
      done
    else
      run_build_runner "$module"
    fi
  fi
done

echo "✅ All applicable modules generated successfully!"
