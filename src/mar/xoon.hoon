::
::::  /hoon/xoon/mar
  ::
::::  generate xml from hoon files
/?    310
=,  mimes:html
=,  html
|_  src/@t
::
++  grow                                                ::  convert to
  |%                                                    ::
  ++  mime  [/application/xml (as-octs xml)]            ::  to %mime
  ++  hymn  (need (de-xml xml))                         ::  to %hymn
  ++  hoon  src                                         ::  uncompiled source
  ++  xml                                               ::  eval hoon
    %-  crip
    %-  en-xml
        %-  (hard manx)
        +:(slap !>(.) (ream src))
  ++  svg  xml
  --
++  grab                                                ::  convert from
  |%
  ++  noun  @t                                          ::  clam from %noun
  ++  hoon  @t
  ++  mime  |=({p/mite q/octs} q.q)                     ::  retrieve form $mime
  --
++  grad  %hoon
--
