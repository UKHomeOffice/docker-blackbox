# docker-blackbox

Dockerized [StackExchange/blackbox](https://github.com/StackExchange/blackbox).

All the `blackbox_*` scripts, git and gpg are available in the image and can for example be used to decrypt secrets in a CI pipeline step.

To build a new version:

- Update `BLACKBOX_VERSION` in [`Dockerfile`](./Dockerfile)
- If appropriate, update the tag of the `debian` base image
- Commit and push
- Confirm that the pipeline built successfully (single `docker-build` pipeline step succeeded)
- Raise a PR and merge it when reviewed
- Tag the git commit point and push it
- Confirm that the pipeline built successfully (single `docker-push` pipeline step succeeded)
