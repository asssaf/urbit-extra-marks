# urbit-extra-marks

## Description
Additional useful marks for urbit

### Marks
In `src/mar`:
* jpg
* gif
* png
* svg

### Renderers
Renderers for dynamic generation of xml, svg and json from hoon are included (in `src/ren`).

For example, the following hoon file (placed in `/web/pages/file.hoon`):
```
> +http://localhost:8080/pages/file.hoon
HTTP 200
...
content-type: text/x-hoon

/=  our  /$  |=({bem/beam *} p.bem)
%-  crip
%-  en-xml:html
;data
  ;running-ship: {<our>}
  ;i-can-add: {<(add 2 2)>}
==
```

Will generate the following XML (when requested with .xml extension):
```xml
> +http://localhost:8080/pages/file.xml
HTTP 200
...
content-type: application/xml

<data><running-ship>~zod</running-ship><i-can-add>4</i-can-add></data>
```

Similarly for JSON:
```
> +http://localhost:8080/pages/file-json.hoon
HTTP 200
...
content-type: text/x-hoon

/=  our  /$  |=({bem/beam *} p.bem)
=,  enjs:format
%-  frond
:-  'ship'
%-  tape
%+  scow
  %p
our
```

Will generate:
```json
> +http://localhost:8080/pages/file-json.json
HTTP 200
...
content-type: application/json

{"ship":"~zod"}
```

## Install
### %package
If you have [%package](https://github.com/asssaf/urbit-package) installed on your urbit:
```
dojo> :package|install %pkg "https://raw.githubusercontent.com/asssaf/urbit-extra-marks/master/package.json"
```

### Urbit Sync
You can sync from the `%dist-extra-marks` desk on ![ship](https://img.shields.io/badge/dynamic/json.svg?label=ship&colorB=008bb8&prefix=&suffix=&query=$.our&uri=https://dist.u.replaythat.com/pages/badge.json).
```
dojo> |sync %home ~dist-ship %dist-extra-marks
```

### Manually
Assuming you have a desk mounted in your pier, copy everything into the pier:
```
$ cp -a src/* /path/to/pier/desk/
```
