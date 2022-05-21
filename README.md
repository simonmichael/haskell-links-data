This repo stores data used by the haskell-links app.
The app expects to find it checked out as "data/" within the
haskell-links repo's working copy.

Links data is aggregated from multiple sources.
For each source, there is a script for fetching its data,
and a snapshot of that data, archived in this repo periodically.
"make update" updates each source's snapshot and commits any changes,
separately to minimise conflicts.

These data snapshots are mostly read only for the haskell-links app.
There is also a hll (haskell links library) data set owned by the app
and writable via git, the web UI, etc. The app layers these data sets
together, with hll taking precedence.

Extra metadata may be stored in additional files; these are also owned
by the app, and writable.

