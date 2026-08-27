# AGENTS.md

## Complexity Policy
- Cyclomatic complexity is capped at 7 per function. CI enforces it; run it locally with:
  `npx -y solhint@6.2.4 --disc --noPoster -c .solhint.json --max-warnings 0 'src/**/*.sol' 'script/**/*.sol' 'test/**/*.sol'`
- **Never** silence it with a `// solhint-disable` comment. `EkuboToken` is immutable
  and already deployed, and solc embeds a hash of the source in the metadata trailer —
  editing a `.sol` file at all, comments included, changes the bytecode and therefore
  the deploy address. Simplify or split the function instead.
