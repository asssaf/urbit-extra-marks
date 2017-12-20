# urbit-extra-marks

## Description
Additional useful marks for urbit

* jpg
* gif
* png
* svg

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
