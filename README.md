# Vox site example

This contains a very simple site to demonstrate/test [Vox](https://github.com/geolessel/vox) functionality.

As [currently configured](https://github.com/geolessel/vox-example/blob/main/config/config.exs#L3), the site will be built into a `_html` directory.
**NOTE that whatever directory you specify will be completely deleted when Vox builds the site.**
Feel free to change that as you wish.

After fetching dependencies (`mix deps.get`), generate the site with `mix vox.build`.

## Local testing

Depending on your specific setup, you will likely have to modify [mix.exs](https://github.com/geolessel/vox-example/blob/main/mix.exs) to point to your local copy of Vox.
