# Lua Action

[![GitHub Release][ico-release]][link-github-release]
[![License][ico-license]](LICENSE)

GitHub Actions for [Lua](https://www.lua.org/) and [LuaRocks v2.4.4](https://luarocks.org/). Base on [mileschou/lua](https://hub.docker.com/r/mileschou/lua/) image.

## Usage

Via GitHub Workflow

```
steps:
  - name: Lua action
    uses: mileschou/lua-action@master
    with:
      args: lua -v
```

## Credits

* [MilesChou](https://github.com/MilesChou)

## License

The MIT License (MIT). Please see [License File](LICENSE) for more information.

[ico-release]: https://img.shields.io/github/tag/MilesChou/lua-action.svg
[ico-license]: https://img.shields.io/badge/license-MIT-brightgreen.svg
[link-github-release]: https://github.com/MilesChou/lua-action/releases
