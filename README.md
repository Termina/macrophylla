
Calcium workflow
----

> template for mini realtime apps, based on calcit-js eco. But with calcit-rs runtime.

### Usages

Install Node.js, Yarn, [Calcit](https://github.com/calcit-lang/calcit) to start.

Clone dependencies into `~/.config/calcit/modules/` with `caps` command from Calcit.

Code with [calcit-editor](https://github.com/calcit-lang/editor).

Run frontend:

```bash
# dev mode
yarn
caps
cr --emit-js # watch compile page code
yarn vite # for browser app

# release mode
caps --ci
cr --emit-js -1
yarn build --base=./
```

Run backend in calcit-rs:

```bash
# dev mode
mode=dev cr --entry server

# release mode
cr --entry server
```

### License

MIT
