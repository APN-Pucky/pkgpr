# Project to automatically propose a PR to Gentoo

This is inspired by `eb --new-pr` [EasyBuild](https://docs.easybuild.io/contributing/#contributing_creating_pull_requests).

## Dependencies

- dev-util/pkgdev
- dev-util/github-cli

## Example

For instance 

```
user $ pkgpr -a APN-Pucky -r sci sci-physics/hoppet
```

produces follwing [PR](https://github.com/gentoo/sci/pull/1242).
