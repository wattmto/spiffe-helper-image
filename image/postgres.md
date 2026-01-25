# PostgreSQL Image Notes

## NSS and user lookups

This image is built with Nix `dockerTools.buildLayeredImage`, which produces a minimal
filesystem. Minimal images do not include `/etc/passwd`, `/etc/group`, or
`/etc/nsswitch.conf` unless you add them explicitly.

PostgreSQL tools (like `psql`) call `getpwuid(0)` to resolve the current UID. If
`/etc/passwd` is missing, the lookup fails with:

```
psql: error: could not look up local user ID 0: No such file or directory
```

To prevent this, the image includes `dockerTools.fakeNss`, which provides baseline
`/etc/passwd`, `/etc/group`, and `/etc/nsswitch.conf` entries for `root`.

If you later run the container as a non-root user, add that user to `/etc/passwd`
and `/etc/group` in `image/postgres.nix`.
