This repo stores data used by the haskell-links app.
The app expects to find it checked out as "data/" within the
haskell-links repo's working copy.
Use contemporaneous versions of the two repos, 
or versions with the same tag name in both repos,
to ensure they agree on the data schema.

Links and metadata are aggregated from multiple sources.
For each source, there is a script for fetching its data,
and a snapshot of that data, archived in this repo periodically.
"make update" updates each source's snapshot and commits any changes,
separately to minimise conflicts.

These datasets are mostly read only for the haskell-links app.
There is a "hll" (haskell links library) dataset owned by the app
and writable via git, and perhaps later the web UI, etc. 

Extra metadata (tags, votes) might be stored separately in additional 
files/dbs. These will also be owned by and writable by the app.

The app layers these data sets together at runtime, with hll taking precedence.
