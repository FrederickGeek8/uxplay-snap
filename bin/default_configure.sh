#!/usr/bin/env sh

FILE="$SNAP_USER_DATA/.uxplayrc"

if [ ! -f "$FILE" ]; then
    # File already exists
    cat <<EOF > "$FILE"
vs waylandsink
EOF
fi

exec "$@"
