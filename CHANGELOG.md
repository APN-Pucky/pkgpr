# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- -nc/--no-cleanup parameter to keep temporary repo for debugging

### Changed

- the temporary repo is deleted at the end

## [0.0.8] - 2024-03-17

### Fixed

- prefix ./profiles/repo_name of temporary repo by 'tmp' to avoid collisions with --test
- use ';' isntead of '&&' in sudo run to make sure permissions of tmp repo are back right

## [0.0.6] - 2024-03-16

### Added

- test and test-flags parameter

## [0.0.5] - 2024-03-14

### Added

- bug/closes parameter

[unreleased]: https://github.com/APN-Pucky/pkgpr/compare/v0.0.8...HEAD
[0.0.8]: https://github.com/APN-Pucky/pkgpr/compare/v0.0.5...v0.0.6
[0.0.6]: https://github.com/APN-Pucky/pkgpr/compare/v0.0.5...v0.0.6
[0.0.5]: https://github.com/APN-Pucky/pkgpr/compare/v0.0.1...v0.0.5
