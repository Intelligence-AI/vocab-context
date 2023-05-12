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

