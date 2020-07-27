# Version code generator action

[![Build Status](https://github.com/lucasfe/version_code_generator/workflows/Bump%20version/badge.svg)](https://github.com/anothrNick/github-tag-action/workflows/Bump%20version/badge.svg)
[![Stable Version](https://img.shields.io/github/v/tag/lucasfe/version_code_generator)](https://img.shields.io/github/v/tag/lucasfe/version_code_generator)
[![Latest Release](https://img.shields.io/github/v/release/lucasfe/version_code_generator?color=%233D9970)](https://img.shields.io/github/v/release/lucasfe/version_code_generator?color=%233D9970)


This action generates a version code based on the commit count of your current branch

## Inputs

### `offset`

**Required** The to be increased on decreased for the final version code. Default `"0"`.

## Outputs

### `code`

The version code generated.

# Usage
name: Version code generator

When using action checkout please specify the input parameter fetch-depth: 0 in order to retrieve all commits

<!-- start usage -->
```yaml
on: [push]

jobs:
  hello_world_job:
    runs-on: ubuntu-latest
    name: Generate new version code
    steps:
    - uses: actions/checkout@v2
      with:
        fetch-depth: 0
- name: Get version code
  id: version_code
  uses: lucasfe/android_version_bump@3.9.3
  with:
    offset: '-3'
```
<!-- end usage -->

