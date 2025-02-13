set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/.env"

DEST_DIR="$(pwd)"
rm -rf */
echo "Cleaned current directory"

find "$ORIGIN_PATH" -type f -name "*.md" | while read -r file; do
  cp "$file" "$DEST_DIR"
  echo "Copied: $file"
done

