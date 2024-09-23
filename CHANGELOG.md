# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.0.13] - 2024-09-23

### Added

- `-ck`/`--check-boxes` to tick policy gentoo boxes
- `--draft` parameter to create PR as a draft

## [0.0.12] - 2024-04-19

### Added

- `-nc`/`--no-cleanup` parameter to keep temporary repo for debugging
- `-v`/`--version` to show version
- `--tmp` to force usage of temporary repo
- `-y`/`--yes` to answer yes to all questions and skip diff prompt

### Changed

- the temporary repo is deleted at the end
- repositories are now cached in ${HOME}/.cache/pkgpr
- `--test` implies `--tmp`
- new default `--test-flags`
- terminate on error in `--test`
- `checkout -f origin/branch` instead of `check HEAD`

## [0.0.8] - 2024-03-17

### Fixed

- prefix `./profiles/repo_name` of temporary repo by 'tmp' to avoid collisions with --test
- use ';' isntead of '&&' in sudo run to make sure permissions of tmp repo are back right

## [0.0.6] - 2024-03-16

### Added

- test and test-flags parameter

## [0.0.5] - 2024-03-14

### Added

- bug/closes parameter

[unreleased]: https://github.com/APN-Pucky/pkgpr/compare/v0.0.12...HEAD
[0.0.12]: https://github.com/APN-Pucky/pkgpr/compare/v0.0.8...v0.0.12
[0.0.8]: https://github.com/APN-Pucky/pkgpr/compare/v0.0.6...v0.0.8
[0.0.6]: https://github.com/APN-Pucky/pkgpr/compare/v0.0.5...v0.0.6
[0.0.5]: https://github.com/APN-Pucky/pkgpr/compare/v0.0.1...v0.0.5
