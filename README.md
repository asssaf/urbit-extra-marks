# urbit-extra-marks

## Description
Additional useful marks for urbit

* jpg
* gif
* png

## Install
### %package
If you have [%package](https://github.com/asssaf/urbit-package) installed on your urbit:
```
dojo> :package [%install %home (need (epur 'https://raw.githubusercontent.com/asssaf/urbit-extra-marks/master/package.json'))]
```

### Urbit Sync
You can sync from `~dotnub-pocfex-mislep-davtex--faltyv-mallex-macfet-faspur`'s `%extra-marks` desk.
```
dojo> |sync %package ~dotnub-pocfex-mislep-davtex--faltyv-mallex-macfet-faspur %extra-marks
```

### Manually
Assuming you have a desk mounted in your pier, copy everything into the pier:
```
$ cp -a src/* /path/to/pier/desk/
```
