This repo stores data used by the haskell-links app.

The app aggregates data from multiple sources.
For each source, there is a script for fetching its data,
and a snapshot of that data is archived here periodically.

These data snapshots are mostly read only for haskell-links. 

There is also a "haskell-links" data set which is owned by the app and
writable, via git, the web UI, etc. 

The app layers these data sets together, with "haskell-links" taking
precedence.

Extra metadata may be stored in additional files; these are also owned
by the app and writable.
