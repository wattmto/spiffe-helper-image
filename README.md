# spiffe-helper image

This repo builds a custom PostgreSQL image that uses `spiffe-helper` as the entrypoint.

## Local builds

Build for a specific architecture by passing `system`:

```bash
nix-build image/postgres.nix --argstr system x86_64-linux -o result-amd64
docker load < result-amd64

nix-build image/postgres.nix --argstr system aarch64-linux -o result-arm64
docker load < result-arm64
```

## CI publishing

The GitHub Actions workflow builds both `amd64` and `arm64`, pushes arch-suffixed tags
(`-amd64` and `-arm64`), and then publishes multi-arch manifest tags (e.g. `latest`,
branch, and SHA-based tags) that reference both architectures.
