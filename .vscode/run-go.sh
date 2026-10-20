#!/usr/bin/env bash
set -e

DIR="$(dirname "$(realpath "$1")")"
FILE="$(basename "$1")"

# Find the nearest parent directory containing go.mod
PROJECT_DIR="$DIR"

while [[ "$PROJECT_DIR" != "/" && ! -f "$PROJECT_DIR/go.mod" ]]; do
    PROJECT_DIR="$(dirname "$PROJECT_DIR")"
done

if [[ -f "$PROJECT_DIR/go.mod" ]]; then
    cd "$PROJECT_DIR"
    go run .
else
    cd "$DIR"
    go run "$FILE"
fi