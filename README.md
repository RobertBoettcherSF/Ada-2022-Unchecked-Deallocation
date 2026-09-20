# Unchecked_Deallocation in Ada 2022

Teaching sheet for `Ada.Unchecked_Deallocation`: allocate, write, free, and
null the access. **No SPARK** (Unchecked ops are outside SPARK by design).

## Companion note

Peter Chapin's [tutorialada](https://github.com/pchapin/tutorialada)
`Access-Types.tex` ends with *Show an example of Unchecked_Deallocation...*.
This sheet is a **standalone MIT companion** that fills that example gap. It is
**not** a fork of his tutorial and does not copy his materials.

Safety caveat: freeing while another access still points at the object can leave
a dangling pointer. The demo frees one access and checks it is `null` afterward.

## Build & test

```bash
make && make test
```

Requires GNAT. Flags: `-gnatwa -gnat2022`.

## License

MIT — see [LICENSE](LICENSE).

LLM assistance was used for this project.
