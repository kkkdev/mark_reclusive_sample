for file in `find docs -name "*.md"`; do
  echo "Syncing $file"
  mark -f "$file" -c mark.toml --parents 概要/$(dirname "$file")
done
