import Config

config :vox, src_dir: "site", output_dir: "_html"

config :esbuild,
  version: "0.19.2",
  default: [
    args: ~w(../site/app.js --bundle --target=es2016 --outdir=../_html/assets),
    cd: Path.expand("../assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]
