JSON Schema Context Vocabulary
==============================

A JSON Schema vocabulary for defining the "Why", "Where", and "Who" of data.
The URI of the latest version of this vocabulary, which targets JSON Schema
2020-12, is:

```sh
https://vocab-context.intelligence.ai/v1
```

Usage
-----

To make use of this vocabulary, modify your metaschema to declare the use of
this vocabulary using the `$vocabulary` keyword and apply its metaschema. For
example:

```json
{
  "$id": "https://example.com/my-metaschema",
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "$dynamicAnchor": "meta",
  "$vocabulary": {
    "https://json-schema.org/draft/2020-12/vocab/core": true,
    "https://json-schema.org/draft/2020-12/vocab/applicator": true,
    "https://json-schema.org/draft/2020-12/vocab/unevaluated": true,
    "https://json-schema.org/draft/2020-12/vocab/validation": true,
    "https://json-schema.org/draft/2020-12/vocab/meta-data": true,
    "https://json-schema.org/draft/2020-12/vocab/format-annotation": true,
    "https://json-schema.org/draft/2020-12/vocab/content": true,
    "https://vocab-context.intelligence.ai/v1": true
  },
  "allOf": [
    { "$ref": "https://vocab-context.intelligence.ai/v1.json" }
  ]
}
```

Keywords
--------

### `documentation: URI`

This keyword is set to a URI or a relative URI reference that points to
human-readable documentation for the given schema. For example:

```json
{ "documentation": "https://vocab-context.intelligence.ai/v1" }
```

The value of this keyword MUST be collected as an annotation.

### `authors: [String]`

This keyword is set to an non-empty array of strings that determine the authors
of the given schema. The format of each author string SHOULD follow the
following format: `name <email>`. For example:

```json
{ "authors": [ "Juan Cruz Viotti <juan@intelligence.ai>" ] }
```

The value of this keyword MUST be collected as an annotation.

### `license: String`

This keyword is set to a string that denotes a valid
[SPDX](https://spdx.org/licenses/) license identifier. For example:

```json
{ "license": "Apache-2.0" }
```

The value of this keyword MUST be collected as an annotation.
