# Hasten
A minimal [hastebin](https://hastebin.com/) cli clone written in Nim

```
Usage:
  echo Hello, World! | hasten [optional-params]
Options(opt-arg sep :|=|spc):
  -h, --help                                    write this help to stdout
  -u=, --url=  string  "https://hastebin.com/"  base url to upload to
  -r, --raw    bool    false                    return the raw URL
```
## Why?
This was written before I realized there was already another Nim client out there (albeit outdated) & curl + awk one-liner.
