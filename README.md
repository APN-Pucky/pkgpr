# Project to automatically propose a PR to Gentoo

This is inspired by `eb --new-pr` [EasyBuild](https://docs.easybuild.io/contributing/#contributing_creating_pull_requests).

`app-portage/pkgpr` exists in the `::apn` overlay: https://gitlab.com/APN-Pucky/gentoo-apn

## Dependencies

Needed:

- `dev-util/pkgdev`
- `dev-util/github-cli`

Optional:

- `app-admin/sudo`
- `>=app-portage/pkg-testing-tools-0.2.3`



## Example

Update a single (ebuild) file(s):

```
user $ pkgpr -a APN-Pucky hepmc-3.2.6.ebuild hepmc-3.2.7.ebuild hepmc-9999.ebuild
```
produces following [PR](https://github.com/gentoo/gentoo/pull/35745).

Submit new package:

```
user $ pkgpr -a APN-Pucky -r sci sci-physics/hoppet
```

produces following [PR](https://github.com/gentoo/sci/pull/1242).

## Testing

Automatic testing before commiting is possible with the `--test` flag that triggers `pkg-testing-tool`.

## Configuration

Just write yourself a script or alias.
