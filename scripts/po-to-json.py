#!/usr/bin/env python3

import json
import sys
from pathlib import Path

from babel.messages.pofile import read_po

CONTEXT_SEPARATOR = "\x04"


def convert(po_path):
    with open(po_path, "rb") as handle:
        catalog = read_po(handle)

    messages = {}
    for message in catalog:
        if not message.id or message.fuzzy:
            continue
        if isinstance(message.id, (list, tuple)):
            key = message.id[0]
            value = [form for form in message.string or []]
            if not any(value):
                continue
        else:
            key = message.id
            value = message.string or ""
            if not value:
                continue
        if message.context:
            key = f"{message.context}{CONTEXT_SEPARATOR}{key}"
        messages[key] = value

    locale = str(catalog.locale) if catalog.locale else Path(po_path).parents[1].name

    return {
        "locale": locale,
        "num_plurals": catalog.num_plurals,
        "messages": messages,
    }


def main(argv):
    if len(argv) not in (2, 3):
        print("usage: po-to-json.py <messages.po> [out.json]", file=sys.stderr)
        return 2

    data = convert(argv[1])
    text = json.dumps(data, ensure_ascii=False, sort_keys=True, separators=(",", ":"))

    if len(argv) == 3:
        Path(argv[2]).write_text(text, encoding="utf-8")
    else:
        print(text)
    return 0


if __name__ == "__main__":
    raise SystemExit(main(sys.argv))
