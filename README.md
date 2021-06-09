# uniq_compat

This project provides a compatibility shim which allows you to replace all uses of
`:elixir_uuid` in your project with `:uniq` without having to make any code changes
to your existing code.

See the [Uniq docs](https://hexdocs.pm/uniq) for more information on that project,
as well as the migration process.

## Installation

To use this package properly, you need to override `:elixir_uuid` with `:uniq_compat`,
which looks like so:

```elixir
def deps do
  [
    {:elixir_uuid, "~> 0.1", hex: :uniq_compat, override: true}
  ]
end
```

This overrides the use of `:elixir_uuid` in your dependency tree with `:uniq_compat`.
Internally, `:uniq_compat` shims the `UUID` module to delegate to `Uniq.UUID` while
preserving the original behaviour of things like `UUID.info/1`.
